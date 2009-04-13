module Inquiry
  OPERATORS = {
    :string => ['contains', 'does not contain', 'begins with', 'ends with', 'is', 'is not'],
    :numeric => ['>', '>=', '=', '!=', '<=', '<'],
    :date => ['>', '>=', '=', '!=', '<=', '<'],
    :boolean => ['is true', 'is false'],
    :null => ['is null', 'is not null'],
  }
  
  def self.operators_for_type(type, nullable=true)
    typeops = 
      case type
      when :integer, :float
        OPERATORS[:numeric]
      when :string
        OPERATORS[:string]
      when :boolean
        OPERATORS[:boolean]
      else
        OPERATORS[:date]
      end
    nullable ? typeops + OPERATORS[:null] : typeops
  end
  
  class Search
    attr_accessor :page_size, :current_page
    attr_accessor :terms
    def initialize
      self.terms = []
      self.page_size = 25
      self.current_page = 1
    end

    class Constraint
      attr_accessor :attribute, :operator, :value
    end
    class Order
      attr_accessor :attribute, :dir
    end
  end
end