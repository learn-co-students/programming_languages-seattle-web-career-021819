require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |sty, langs|
    langs.each do |lang, val|
      if !new_hash.include?(lang)
        new_hash[lang] = {:style => [sty], :type => val[:type]}
      else
        new_hash[lang][:type] = val[:type]
        new_hash[lang][:style] << sty
      end
    end
  end
  new_hash
end
