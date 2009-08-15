class User < ActiveRecord::Base
  queso_searchable :exclude => 'birthdate'
end
