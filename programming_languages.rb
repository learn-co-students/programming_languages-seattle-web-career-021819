def reformat_languages(languages)
  newHash = {}
  languages.each {|style, language|
    language.each{|name, type|
      if !newHash.has_key?(name)
        newHash[name] = type
        newHash[name][:style] = [style]
      else
        newHash[name][:style] << style
      end
    }
  }
  newHash
end
