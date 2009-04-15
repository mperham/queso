require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'active_record'

require 'queso'

ActiveRecord::Base.send(:include, QuesoSearchable)
ActiveRecord::Base.configurations = { 'test' => { :adapter => 'sqlite3', :database => ':memory:' } }
ActiveRecord::Base.establish_connection 'test'
ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define(:version => 20090407202245) do
  create_table "fake_models", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.date     "birthdate"
    t.boolean  "is_admin"
    t.integer  "age"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end

$LOAD_PATH << File.dirname(__FILE__) + '/../app/models'