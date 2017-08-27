


def words(sentence)
words = sentence.split(" ")
hash = {}
words.uniq.each{|e| hash[e]= words.count(e)}
return hash
end


#words("You are the Sun and when the sun is gone, you are the moon!")
