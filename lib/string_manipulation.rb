class StringManipulation
  #Generate histogram (Hash) with number of ocurrences of each character (char => ocurrences).
  def generate_histogram(arr_chars)
    if arr_chars.instance_of?(Array) then 
      histogram = Hash.new(0)
      arr_chars.each { |char| histogram[char] += 1 }
      return histogram
    else 
      raise TypeError, "Expected Array but was given #{arr_chars.class}.", caller
    end
  end

  #1 - Counts how many characters were repeated in a string, except for whitespaces.
  def count_characters(str)
    if str.instance_of?(String) then
      counter = 0
      histogram = generate_histogram(str.chars)
      histogram.each_value { |occurence| counter += 1 if occurence > 1 }
      return counter
    else
      raise TypeError, "Expected String but was given #{str.class}.", caller
    end
  end

  #2 - Return first character not repeated.
  def first_char_not_repeated(str)
    if str.instance_of?(String) then
      not_repeated = nil
      histogram = generate_histogram(str.chars)
      histogram.each { |char, ocurrences| not_repeated = char and break if ocurrences == 1 }
      return not_repeated
    else
      raise TypeError, "Expected String but was given #{str.class}.", caller
    end
  end
end