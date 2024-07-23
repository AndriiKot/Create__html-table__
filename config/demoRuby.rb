require 'yaml'

testYAML = YAML.safe_load_file('./demo_test_logos_plus_links.yml')

p testYAML
p testYAML['CSS']['svg']
p testYAML['CSS']['link']