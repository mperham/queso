require 'queso_search'

module QuesoSearchHelper

  def attribute_selector(model)
    select_tag 'term[attribute]', options_from_collection_for_select(model.columns, :name, :name)
  end
  
  def operator_selector
    select_tag 'term[operator]', options_for_select(['=', '<', '>', '<=', '>=', 'is null', 'is not null', 'like'])
  end
  
  def value_input
    text_field_tag 'term[value]', ''
  end
  
  def current_query(model)
    name = model.name if model.kind_of? ActiveRecord::Base
    unless session.has_key? "queso_#{name}_query"
      session["queso_#{name}_query"] = Queso::Search.new(name)
    end
    session["queso_#{name}_query"]
  end
  
  def delete_term(term, model=nil)
    name = model ? model.name : params[:id]
    "<a href='/queso_searches/#{name}/rm_term?term_idx=#{current_query(name).terms.index(term)}'>Delete</a>"
  end

  def add_term(model)
    "<input type=\"submit\" value=\"+\" />"
  end

  def stripe_class(idx)
    idx % 2 == 0 ? 'even' : 'odd'
  end
  
  def column_values(query, result)
    returning [] do |values|
      query.headers do |name|
        values << result.send(name.to_sym)
      end
    end
  end
  
  def formatted(value)
    case value
    when Float
      "0.3f" % value
    else
      value.to_s
    end
  end

end