def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |name, type|
      new_hash[name] ||= type
      new_hash[name][:style] ||= []
      new_hash[name][:style] << style
    end
  end
  new_hash
end
