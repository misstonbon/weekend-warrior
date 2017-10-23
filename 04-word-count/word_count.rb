


def words(sentence)
words = sentence.split(" ")
hash = {}
words.uniq.each{|e| hash[e]= words.count(e)}
return hash
end

puts words("You are the Sun and when the Sun is gone, you are the moon!")

# def words(phrase)
#   phrase.split.inject(Hash.new(0)) { |h, v| h[v] +=1; h }
# end
#h is an accumulator. The accumulator is intialized as an empty hash.
#what is the time complexity of this?

# def words(string)
#   keys = string.split(" ")
#   arr = keys.uniq.map { |word| [word, keys.count(word)]}
#   return arr.to_h
# end


without split!


def words(input)
  word_count = {}
  start = 0
  finish = 0
  i = 0
  input.each_char do |c|
    # checking that aren't two whitespace in a row
    if input[i - 1].match(/\s/) && c.match(/\s/)
      i += 1
      start = i
      finish = i
      next
    end
    # checking to find breaks in phrase indicating words
    if c == " " || c.match(/\s/)
      if word_count.keys.include? input[start...finish]
        word_count[input[start...finish]] += 1
      else
        word_count[input[start...finish]] = 1
      end
      start = i + 1
      finish = i + 1
      # to account for end of phrase
    elsif i + 1 == input.length
      if word_count.keys.include? input[start..finish]
        word_count[input[start..finish]] += 1
      else
        word_count[input[start..finish]] = 1
      end
    else
      finish += 1
    end
    i += 1
  end
  return word_count
end
