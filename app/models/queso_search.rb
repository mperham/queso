module Queso
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
    attr_accessor :model_class
    attr_accessor :page_size, :current_page
    attr_accessor :terms, :orders
    def initialize(model_class)
      self.model_class = model_class
      self.terms = []
      self.orders = []
      self.page_size = 25
      self.current_page = 1
    end
    
    def results
      query = klass.scoped(:limit => self.page_size, :offset => (self.current_page - 1) * page_size)
      query = query.scoped(:order => sorting) if sorting?
      query = query.scoped(:conditions => constraints) if constraints?
      query.all
    end
    
    def constraints
      sql = terms.join(" AND ")
      values = terms.map(&:value).compact
      [sql, values]
    end
    
    def constraints?
      terms.size > 0
    end
    
    def sorting
      orders.join(", ")
    end
    
    def sorting?
      orders.size > 0
    end
    
    private
    
    def klass
      self.model_class.constantize
    end
  end

  class Constraint
    attr_accessor :attribute, :operator, :value
    def initialize(&block)
      yield self if block_given?
    end
    def to_s
      "#{attribute} #{operator}#{value ? " ?" : ''}"
    end
  end

  class Order
    attr_accessor :attribute, :dir
    def initialize
      @dir = 'desc'
    end
    def to_s
      "#{attribute} #{dir}"
    end
  end
end