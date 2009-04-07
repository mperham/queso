require 'adhoc_searchable'
require 'yaml'

module AdhocSearch
  VERSION = begin
    data = YAML.load(File.read(File.dirname(__FILE__) << "/../VERSION.yml"))
    "#{data[:major]}.#{data[:minor]}.#{data[:patch]}"
  end
end