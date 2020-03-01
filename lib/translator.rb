def load_library(file_path)
  files = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  files.each do |meaning, emoticon|
    result["get_meaning"][emoticon[1]] = meaning
    result["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  result
  
  