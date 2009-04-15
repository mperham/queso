require 'test_helper'
require 'queso_search'

class FakeModel < ActiveRecord::Base
  queso_searchable
end

class ModelTest < Test::Unit::TestCase
  
  context "Basic model" do
  
    should "provide type-specific operators" do
      assert_equal ['contains', 'does not contain', 'begins with', 'ends with', 'is', 'is not'], Queso.operators_for_type(:string, false)
      assert_equal ['>', '>=', '=', '!=', '<=', '<'], Queso.operators_for_type(:integer, false)
      assert_equal ['>', '>=', '=', '!=', '<=', '<', 'is null', 'is not null'], Queso.operators_for_type(:integer)
    end

    should "provide a version constant" do
      assert_equal "0.1.0", Queso::VERSION
    end

  end
  
  context "search" do
    
    should "support basic constraints" do
      search = Queso::Search.new('FakeModel')
      search.terms << constraint('firstname', '=', 'mike')
      
      assert_equal 0, search.results.size
    end

  end
  
  private
  
  def constraint(attrib, op, value=nil)
    Queso::Constraint.new do |c|
      c.attribute = attrib
      c.operator = op
      c.value = value
    end
  end

end