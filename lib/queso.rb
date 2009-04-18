require 'queso_search'
require 'queso_searchable'
require 'yaml'

module Queso
  VERSION = begin
    data = YAML.load(File.read(File.dirname(__FILE__) << "/../VERSION.yml"))
    "#{data[:major]}.#{data[:minor]}.#{data[:patch]}"
  end
end