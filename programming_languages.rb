  # your code here
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, attributes|
    new_hash[name] ||= attributes
    new_hash[name][:style]=[]
    new_hash[name][:style]<< style 
    end
  end
  new_hash
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, attribute|
      if new_hash[name] == nil
          new_hash[name] = attribute
        end
      new_hash[name][:style] = []
      new_hash[name][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end

 languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
 }
