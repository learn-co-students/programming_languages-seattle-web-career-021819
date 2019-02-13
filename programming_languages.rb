require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style_key, language_hash|
    language_hash.each do |language_name, type|
      if new_hash.key?(language_name)
      new_hash[language_name][:style] << style_key

    else
      new_hash[language_name] = type
      new_hash[language_name][:style] = [style_key]

end
end
end
  new_hash
end

#add :style => [] within each language, with :oo and/or :functional
