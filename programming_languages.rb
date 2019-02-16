require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_of_language, language_stuff|
    language_stuff.each do |language, type_hash|
    if !new_hash.key?(language)
      new_hash[language] = {}
    else
    end
      new_hash[language][:type] = type_hash[:type]
      if new_hash[language].key?(:style)
          new_hash[language][:style] << style_of_language
      else
            new_hash[language][:style] = []
          new_hash[language][:style] << style_of_language
      end
    end
  end
  return new_hash
end
