class Scrabble

  def score(word)
    return 0 if nil_or_empty?(word)
    letters = upcase_and_split(word)
    sum_points(letters)
  end

  def nil_or_empty?(word)
    word == nil || word == ''
  end

  def upcase_and_split(word)
    word.upcase.chars
  end

  def sum_points(letters)
    letters.reduce(0) {|points, letter| points += point_values[letter]}
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
