def reformat_languages(languages)
  output_hash = {}
  languages.each do |oo_or_func, languages_hash|
    languages_hash.each do |lang_name, type_hash|
      if output_hash.key?(lang_name)
        temp_array = output_hash[lang_name][:style]
        temp_array << oo_or_func
        output_hash[lang_name][:style] = temp_array
      else
        type_string = type_hash.values[0]
        style_array = []
        style_array << oo_or_func
        output_hash[lang_name] = {}
        output_hash[lang_name][:type] = type_string
        output_hash[lang_name][:style] = style_array
      end
    end
  end
  output_hash
end
