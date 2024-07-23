require 'yaml'

testYAML = YAML.safe_load_file('./demo_test_logos_plus_links.yml')
testYAMLarray = YAML.safe_load_file('./tecnology_stacks.yml')

p testYAML
p testYAML['CSS']
p testYAML['CSS']['svg']
p testYAML['CSS']['link']

p testYAMLarray
