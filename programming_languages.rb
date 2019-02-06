
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |sty, langs|
    langs.each do |lang, t|
      if !new_hash.include?(lang)
        new_hash << {lang => {:style => [sty], :type => t}}
      else
        new_hash[lang][:type] = t
        new_hash[lang][:style] << sty
      end
    end
  end

  new_hash
end
