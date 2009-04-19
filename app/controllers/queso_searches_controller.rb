require 'queso_search'
class QuesoSearchesController < ApplicationController
  layout nil

  def search
    # First add a term if the user added a term and 
    # submitted the query as one action
    add_term 
    query = current_query(params[:id])
    query.page_size = params[:page_size] || 25
    query.current_page = params[:current_page] || 1
    @total = query.count
    @results = query.search
    render :partial => 'results'
  end
  
  def add_term
    if params[:term][:attribute].present? and params[:term][:operator].present?
      query = current_query(params[:id])
      @term = Queso::Constraint.new do |t|
        t.attribute = params[:term][:attribute]
        t.operator = params[:term][:operator]
        t.value = params[:term][:value]
      end
      query.terms << @term
    end
  end
  
  def rm_term
    query = current_query(params[:id])
    query.terms.delete_at(Integer(params[:term_idx]))
    # TODO rm term row in ui
  end
  
  private
  
  def current_query(model)
    name = case model
    when ActiveRecord::Base
      model.name
    when String
      model
    else
      raise ArgumentError, "Unable to lookup current query for: #{model}"
    end

    unless session.has_key? "queso_#{name}_query"
      session["queso_#{name}_query"] = Queso::Search.new(name)
    end
    session["queso_#{name}_query"]
  end

end