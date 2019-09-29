# require modules here
require "pry"
require "yaml"


def load_library(library_file)
  library_hash = {}
  japanese_emoticon = {}
  english_emoticon = {}
  library_file = YAML.load_file('./lib/emoticons.yml')
  library_file.each do |meaning, data|
     #binding.pry 
    #japanese_emoticon["get_emoticon"] = {data[1] => meaning}
    # english_meaning["meaning"] = {meaning => data[0]}
   japanese_emoticon[data[1]] = meaning
   english_emoticon[data[0]] = data[1]
   
   library_hash["get_meaning"] = japanese_emoticon
   library_hash["get_emoticon"] = english_emoticon
 end
 library_hash
end

def get_japanese_emoticon(library_file, emoticons)
    # code goes here
    
   emoticon_hash = load_library(library_file)
   
   result = emoticon_hash.find {|a| a = 
   (emoticon_hash["get_emoticon"][emoticons])
   
   binding.pry
 result
end

def get_english_meaning
  # code goes here
end