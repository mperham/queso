require 'queso_search'

module QuesoSearchHelper
  
  def queso_filter_for(model)
    @queso_model = model.name
    render :partial => 'queso_searches/query'
  end
  
  def queso_results_for(model)
    @queso_model = model.name
    render :partial => 'queso_searches/results'
  end
  
  def current_model
    @queso_model
  end

  def current_query
    @query = (session["queso_#{current_model}_query"] ||= Queso::Search.new(current_model))
  end
  
  def column_values(query, result)
    returning [] do |values|
      query.headers.each do |name|
        values << result.send(name.to_sym)
      end
    end
  end
  
  def query_results
    @results || begin
      if @query and !@query.terms.blank?
        @query.page_size = params[:page_size] || 25
        @query.current_page = params[:current_page] || 1
        @total = @query.count
        @results = @query.results
        puts "Results"
        p @results
        @results
      end
    end
  end
  
  def formatted(value)
    case value
    when Float
      "%0.3f" % value
    else
      value.to_s
    end
  end

end