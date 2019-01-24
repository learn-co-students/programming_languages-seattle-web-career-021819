require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  hash = {}
  languages.each do |language_style, language|
    language.each do |type, value|
      value.each do |attribute, data|

        puts "#{attribute}"

      binding.pry
      hash[type] = {type: value, style: language_style}
end
end
hash
end
end




def reformat_languages(languages)
  hash = {}
  languages.each do |language_style, language|
    language.each do |language_name, data|
      data.each do |type, value|
        hash[language_name] = {type: value, style: [language_style]}
        if hash[language_name] == hash[:javascript]
          hash[:javascript] = {type: value, style: [:oo, :functional]}
end
end
end
end
return hash
end
