require 'test_helper'
require 'inquiry_search'

class ModelTest < Test::Unit::TestCase
  
  def test_operators
    assert_equal ['contains', 'does not contain', 'begins with', 'ends with', 'is', 'is not'], Inquiry.operators_for_type(:string, false)
    assert_equal ['>', '>=', '=', '!=', '<=', '<'], Inquiry.operators_for_type(:integer, false)
    assert_equal ['>', '>=', '=', '!=', '<=', '<', 'is null', 'is not null'], Inquiry.operators_for_type(:integer)
  end
end