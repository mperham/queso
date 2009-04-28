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

  def attribute_selector
    select_tag 'term[attribute]', options_from_collection_for_select(current_query.klass.columns, :name, :name)
  end
  
  def operator_selector
    select_tag 'term[operator]', options_for_select(['=', '<', '>', '<=', '>=', 'is null', 'is not null', 'like'])
  end
  
  def value_input
    text_field_tag 'term[value]', ''
  end
  
  def current_query
    name = current_model
    unless session.has_key? "queso_#{name}_query"
      session["queso_#{name}_query"] = Queso::Search.new(name)
    end
    session["queso_#{name}_query"]
  end
  
  def delete_term_link(term_idx)
    link_to_remote 'X', 
      { :url => "/queso_searches/#{current_model}/rm_term?term_idx=#{term_idx}" },
      { :method => :delete }
  end

  def stripe_class(idx)
    idx % 2 == 0 ? 'even' : 'odd'
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