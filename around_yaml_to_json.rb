require 'yaml'

def parse_yaml_files_from_directory(directory_path)
  data_array = []
  Dir["#{directory_path}/*.yml"].each_with_object({}) { |file_path|
    data_array << YAML.load_file(file_path)
  }
  data_array.class
end

def get_language(hash)
  hash.keys.first
end

p parse_yaml_files_from_directory('test_set')
