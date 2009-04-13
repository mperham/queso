require 'inquiry'

ActiveRecord::Base.send(:include, AdhocSearchable)