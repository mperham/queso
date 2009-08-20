require 'queso_search'

class QuesoSearchesController < ApplicationController
  
  before_filter :query_setup
  helper QuesoSearchHelper
  
  def submit
    # First add a term if the user added a term and 
    # submitted the query as one action
    if params[:commit] == 'Add Constraint'
      add_term 
    elsif params[:commit] == 'Add Sort'
      add_sort
    end
    run_query
    render :update do |page|
      if @term
        page.insert_html :before, 'newterm', render(:partial => 'term')
        page.visual_effect :highlight, 'terms'
        page['term_form'].reset
      end
      if @sort
        page.insert_html :before, 'newsort', render(:partial => 'sort')
        page.visual_effect :highlight, 'sorts'
        page['term_form'].reset
      end
      page.replace 'queso_results', :partial => 'results'
    end
  end
  
  def rm_term
    idx = Integer(params[:term_idx])
    @term = @query.terms.delete_at(idx)
    render :update do |page|
      page.remove "term-#{idx}"
      page.replace 'queso_results', :partial => 'results'
    end
  end
  
  def rm_order
    idx = Integer(params[:sort_idx])
    @sort = @query.orders.delete_at(idx)
    render :update do |page|
      page.remove "sort-#{idx}"
      page.replace 'queso_results', :partial => 'results'
    end
  end
  
  private
  
  def add_sort
    @sort = Queso::Order.new do |s|
      t.attribute = params[:sort][:attribute]
      t.dir = params[:sort][:dir]
    end
    @query.orders << @sort
    @sort_counter = @query.sorts.size - 1
  end
  
  def run_query
    if @query and !@query.terms.blank?
      @query.page_size = params[:page_size] || 25
      @query.current_page = params[:current_page] || 1
      @total = @query.count
      @results = @query.results
    end
  end    
  
  def add_term
    # Need to be wary of security here.  Want to avoid SQL injection.
    # The value is escaped.  The operator is not so we ensure it is no longer than
    # the longest operator (is not null).
    if params[:term][:attribute].present? and params[:term][:operator].present? and (params[:term][:value].present? || params[:term][:operator] =~ /^is /)
      return if params[:term][:operator].size > 11
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
    name = params[:id]
    raise ArgumentError, "Unable to lookup current query for: #{name}" unless name

    @query = (session["queso_#{name}_query"] ||= Queso::Search.new(name))
    @queso_model = @query.model_name
  end
  
end