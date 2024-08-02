require 'yaml'

require './lib/table_creator.rb'

table_creator = TableCreator.new
table_creator.create_or_clear_file
table_creator.add_tables
