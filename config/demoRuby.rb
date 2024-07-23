require 'yaml'

testYAML = YAML.safe_load_file('./demo_test_logos_plus_links.yml')

p testYAML[0]
p testYAML['CSS']
p testYAML['CSS']['svg']
p testYAML['CSS']['link']