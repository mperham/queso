require 'queso_search'

class QuesoSearchesController < ApplicationController
  
  before_filter :query_setup
  helper QuesoSearchHelper

  def submit
    # First add a term if the user added a term and 
    # submitted the query as one action
    add_term 
    @query.page_size = params[:page_size] || 25
    @query.current_page = params[:current_page] || 1
    @total = @query.count
    @results = @query.results
    render :update do |page|
      if @term
        page.insert_html :before, 'newterm', render(:partial => 'term')
        page.visual_effect :highlight, 'terms'
        page['term_form'].reset
      end
      page.replace_html 'queso_results', :partial => 'results'
    end
  end
  
  def rm_term
    idx = Integer(params[:term_idx])
    @term = @query.terms.delete_at(idx)
    render :update do |page|
      page.replace_html 'terms', :partial => 'terms'
    end
  end
  
  private
  
  def add_term
    if params[:term][:attribute].present? and params[:term][:operator].present? and params[:term][:value].present?
      @query = current_query(params[:id])
      @term = Queso::Constraint.new do |t|
        t.attribute = params[:term][:attribute]
        t.operator = params[:term][:operator]
        t.value = params[:term][:value]
      end
      @query.terms << @term
      @term_counter = @query.terms.size - 1
    end
  end
  
  def query_setup
    @query = current_query(params[:id])
    @queso_model = @query.model_name
  end
  
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