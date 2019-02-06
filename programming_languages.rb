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
  new_hash = {}
  languages.each do |style, name|
    name.each do |lang, type|
      type.each do |type, info|
      new_hash[lang] = {type: info, style: [style]}
    end
    end
  end
  new_hash[:javascript][:style].push :oo
  new_hash
end
