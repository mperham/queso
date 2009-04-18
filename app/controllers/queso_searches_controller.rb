class QuesoSearchesController < ApplicationController

  def search
    # First add a term if the user added a term and 
    # submitted the query as one action
    add_term 
    @query = current_query(params[:model_name])
    @query.page_size = params[:page_size] || 25
    @query.current_page = params[:current_page] || 1
    @total = @query.count
    @results = @query.search
    render :partial => 'results'
  end
  
  def add_term
    if params[:term][:attribute].present? and params[:term][:operator].present?
      query = current_query(params[:model_name])
      query.terms << Queso::Term.new do |t|
        t.attribute = params[:term][:attribute]
        t.operator = params[:term][:operator]
      end
      # TODO render new term row
    end
  end
  
  def rm_term
    query = current_query(params[:model_name])
    query.terms.delete_at(Integer(params[:term_idx]))
    # TODO rm term row in ui
  end
end