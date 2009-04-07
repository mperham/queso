module AdhocQueriesHelper
  def attribute_selector
    select_tag 'term[attribute]', options_from_collection_for_select(model.columns, :name, :name)
  end
  
  def operator_selector
    select_tag 'term[operator]', options_for_select(['=', '<', '>', '<=', '>=', 'is null', 'is not null', 'like'])
  end
  
  def value_input
    text_field_tag 'term[value]', ''
  end
  
  def current_query(model)
    session["adhoc_#{model.name}_query"] ||= AdhocQuery.new
  end
  
  def delete_term(term)
    '&nbsp;'
  end

  def add_term(term)
    '&nbsp;'
  end
end