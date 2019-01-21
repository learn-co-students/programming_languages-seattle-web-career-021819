require 'pry'


def reformat_languages(languages)
new_hash = {}
  languages.each do |styles, descriptions|
    descriptions.each do |languages, attributes|
      if new_hash.has_key?(languages)
        new_hash[languages][:style] << styles
      else
        new_hash[languages] = attributes
        new_hash[languages][:style] = [styles]
      end
    end
  end
  new_hash
end
