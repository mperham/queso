require 'test_helper'
require 'queso_search'

class ActiveRecord::ConnectionAdapters::SQLiteAdapter
  def execute_with_log(sql, name = nil)
    $sql << sql
    {}
  end
  alias_method_chain :execute, :log
end

class FakeModel < ActiveRecord::Base
  queso_searchable
end

class ModelTest < Test::Unit::TestCase
  def setup
    $sql = []
  end
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
      assert_sql "SELECT * FROM \"fake_models\" WHERE (firstname = 'mike')  LIMIT 25 OFFSET 0"
      assert_equal 0, search.count
      assert_sql "SELECT count(*) AS count_all FROM \"fake_models\" WHERE (firstname = 'mike') "
    end

  end

  private

  def assert_sql(sql)
    exsql = $sql.first
    $sql.clear
    assert_equal sql, exsql
  end

  def constraint(attrib, op, value=nil)
    Queso::Constraint.new do |c|
      c.attribute = attrib
      c.operator = op
      c.value = value
    end
  end

end