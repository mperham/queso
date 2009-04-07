class AdhocQueriesController < ApplicationController

  def search
    # First add a term if the user added a term and 
    # submitted the query as one action
    add_term 
    @query = current_query(params[:model_class])
    @results = @query.search
    render :partial => 'results'
  end
  
  def add_term
    if params[:term][:attribute].present? and params[:term][:operator].present?
      query = current_query(params[:model_class])
      query.terms << AdhocQuery::Term.new(params[:term])
      # TODO render new term row
    end
  end
  
  def rm_term
    query = current_query(params[:model_class])
    query.terms.delete_at(Integer(params[:term_idx]))
    # TODO rm term row in ui
  end
end