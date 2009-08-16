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
    name = current_model
    session["queso_#{name}_query"] ||= Queso::Search.new(name)
  end
  
  def column_values(query, result)
    returning [] do |values|
      query.headers.each do |name|
        values << result.send(name.to_sym)
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