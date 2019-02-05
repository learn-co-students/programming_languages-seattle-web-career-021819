

def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style_of_language, name_of_language|

    name_of_language.each do |name_of_language, type|
      if !new_hash.has_key?(name_of_language)
        new_hash[name_of_language] = type
        new_hash[name_of_language][:style] = []
        new_hash[name_of_language][:style] << style_of_language
      else
       new_hash[name_of_language][:style] << style_of_language
       end
    end

  end



  return new_hash
end
