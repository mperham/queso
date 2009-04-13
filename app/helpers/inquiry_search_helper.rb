require 'inquiry_search'
module InquirySearchHelper
  def attribute_selector(model)
    p model.columns
    select_tag 'term[attribute]', options_from_collection_for_select(model.columns, :name, :name)
  end
  
  def operator_selector
    select_tag 'term[operator]', options_for_select(['=', '<', '>', '<=', '>=', 'is null', 'is not null', 'like'])
  end
  
  def value_input
    text_field_tag 'term[value]', ''
  end
  
  def current_query(model)
    session.clear
    unless session.has_key? "inquiry_#{model.name}_query"
      session["inquiry_#{model.name}_query"] = Inquiry::Search.new
    end
    session["inquiry_#{model.name}_query"]
  end
  
  def delete_term(term)
    '&nbsp;'
  end

  def add_term(model)
    '&nbsp;'
  end
end