class StringManipulation

  #Counts how many characters were repeated in a string, except for whitespaces.
  def count_characters(str)
    counter = 0
    histogram = Hash.new(0)
    arr_chars = str.chars

    arr_chars.each { |char|
      histogram[char] += 1 unless char == " "
    }

    histogram.each_value { |occurence|
      counter += 1 if occurence > 1
    }

    return counter
  end
  
end