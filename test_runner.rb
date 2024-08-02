require 'yaml'

require './lib/table_creator.rb'

table_creator = TableCreator.new(size: 10, file_to_write: './test_data/README.md')
table_creator.create_or_clear_file
table_creator.add_tables