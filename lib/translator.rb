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
   
   if emoticon_hash["get_emoticon"][emoticons]
   result = emoticon_hash["get_emoticon"][emoticons]
 else
   result = "Sorry, that emoticon was not found"
 end
   
   #binding.pry
 result
end

def get_english_meaning(library_file, emoticons)
  
  emoticon_hash = load_library(library_file)
   if emoticon_hash["get_meaning"][emoticons]
   result = emoticon_hash["get_meaning"][emoticons]
 else
   result = "Sorry, that emoticon was not found"
 end
  
  # code goes here
  result
end