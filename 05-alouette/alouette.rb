class Alouette
  def self.lines_for_verse(num)
    all_lines = [
      "Et la tête!", #0
      "Et le bec!",  #1
      "Et les yeux!",#2
      "Et le cou!",  #3
      "Et les ailes!", #4
      "Et les pattes!", #5
      "Et la queue!", #6
      "Et le dos!" #7
    ]
    return (all_lines.slice(0..num)).reverse
  end

  def self.verse(num)
    verse = ""

    verse_lines = Alouette.lines_for_verse(num)
    verse_lines.each_with_index do |line, index|
      ending = line.slice(3, line.length - 4)
      if (index == 0)
        verse += ("Je te plumerai #{ending}.\n" * 2)
      end

      verse += ("#{line}\n" * 2)
    end

    verse += "Alouette!\nAlouette!\nA-a-a-ah"

    return verse
  end

  def self.sing
    song = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    song += "#{refrain}\n\n"

    8.times do |i|
      song += "#{self.verse(i)}\n\n#{refrain}"
      song += "\n\n" if (i < 7)
    end
    return song
  end
  
end
