require 'yaml'

require './lib/table_creator.rb'

table_creator = TableCreator.new(file_to_write: './test_data/README.md')
table_creator.add_or_clear_file
table_creator.add_tables
