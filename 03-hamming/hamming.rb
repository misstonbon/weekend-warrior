class Hamming



  def self.compute(str1, str2)
    raise ArgumentError.new("Strands must be the same length in ordef to compare.") if str1.length != str2.length

    total = str1.length
    distance = 0
    i = 0

    total.times do
      unless str1[i] == str2[i]
        distance += 1
      end
      i += 1
    end

    return distance
  end

end
