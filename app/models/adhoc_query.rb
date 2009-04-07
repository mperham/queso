class AdhocQuery
  attr_accessor :terms
  def initialize
    self.terms = []
  end

  class Term
    attr_accessor :attribute, :operator, :value
  end
end