require 'pry'

def reformat_languages(languages)
   new_hash = {}

   languages.each do |style, lang_hash|
     lang_hash.each do |lang_name, type|
       new_hash[lang_name] ||= type
       new_hash[lang_name][:style] ||= []
       new_hash[lang_name][:style] << style
     end
   end
   new_hash
 end
