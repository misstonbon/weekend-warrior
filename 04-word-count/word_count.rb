


def words(sentence)
sentence = sentence.upcase.split(" ")
hash = {}
sentence.uniq.each{|e| hash[e]= sentence.count(e)}
puts hash
end


#words("You are the Sun and when the sun is gone, you are the moon!")
