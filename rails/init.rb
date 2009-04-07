require 'adhoc_search'

ActiveRecord::Base.send(:include, AdhocSearchable)