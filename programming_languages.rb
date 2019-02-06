def reformat_languages(languages)
  new_hash = {}

  #get to list of programs
  #insert them as new keys

  languages.each do |k, v|
    v.each do |k2, v2|
      new_hash[k2.to_sym] = v2
      #new_hash[k2.to_sym] << :style
      new_hash[k2.to_sym][:style] = []
      new_hash[k2.to_sym][:style] << k
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
