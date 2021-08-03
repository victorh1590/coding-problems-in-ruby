class StringManipulation
  #Generate histogram (Hash) with number of ocurrences of each character (char => ocurrences).
  def generate_histogram(arr_chars)
    if arr_chars.instance_of?(Array) then 
      histogram = Hash.new(0)
      arr_chars.each { |char| histogram[char] += 1 unless char == " " }
      return histogram
    else 
      raise TypeError, "Expected Array but was given #{arr_chars.class}.", caller
    end
  end

  #Counts how many characters were repeated in a string, except for whitespaces.
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
end