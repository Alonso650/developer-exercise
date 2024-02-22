class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #splitting the words in the sequence 
    words = str.split(" ")
    # used a map to traverse through each word in the sequence
    result = words.map do |word|
      # $ checks the ending of the string to see if its a non-word
      # character and if found then word[-1] returns the last character
      symbol = word =~ /\W$/ ? word[-1] : nil
      if word.length > 4 && word[0] == word[0].upcase
        # adding a symbol to each word if there happens to be a special character
        word = "Marklar" + symbol.to_s
      elsif word.length > 4
        word = "marklar" + symbol.to_s
      else
        word
      end
    end
    # adds the words back into a string
    return result.join(" ")
      
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # 0 and 1 represent the first 2 numbers in the fibonacci sequence
    a = 0
    b = 1
    result = 0
    count = 0
  
    # incrementing count until reach the nth value
    while count < nth
      if b % 2 == 0
        # adding the value of b because it is the current number and a
        # is the previous number
        result += b
      end
      # swapping the values and assinging b to a + b would generate the next fibonacci number
      temp = a
      a = b
      b = temp + a
      count += 1
    end
    result
  end

end
