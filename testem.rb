# require modules here
require "pry"
require "yaml"
library_file = 0 
japanese_emoticon = {}
english_meaning = {}

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
   
   
   #{"get_meaning"=> {data[1]=> meaning}},
    # {"get_emoticon" => {meaning => data[0]}}
     
  
    
  end
  #english_emoticon
  #japanese_emoticon
  library_hash
  #binding.pry
end

def get_japanese_emoticon(library_file, emoticons)
   emoticon_hash = load_library(library_file)
   
   p result = emoticon_hash["get_emoticon"][emoticons]
   #p emoticon_hash.find {| a | a = emoticons}
  # p result = emoticon_hash["get_emoticon"][emoticons]
   
   # binding.pry
   
  # code goes here
  
  
end

def get_english_meaning
  # code goes here
end

#p load_library(library_file)
 get_japanese_emoticon(library_file, ":O")
