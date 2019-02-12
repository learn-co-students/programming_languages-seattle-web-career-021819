def reformat_languages(languages)
  #changes
  nhash={}
  languages.each do |k, v|
    v.each do |k2, v2|
      if(!nhash.keys.include?(k2))
        nhash[k2]=v2
        nhash[k2][:style]=[k]
      else
        nhash[k2][:style].push(k)
      end
    end
  end
  nhash
end
