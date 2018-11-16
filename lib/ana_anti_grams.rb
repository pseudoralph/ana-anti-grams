class Anagramer
  def initialize(word)
    @second_word

    if is_word?(word)[0]
      @first_word = is_word?(word)[1]
    else
      raise ArgumentError, "ERROR: #{is_word?(word)[1]}"
    end

  end

  def anagram(word_to_test)
    result = "These words are NOT anagrams."

    if is_word?(word_to_test)[0]
      @second_word = is_word?(word_to_test)[1]
    else
      return "ERROR-#{is_word?(word_to_test)[1]}: #{word_to_test} contains no vowels. Try again."
    end

    if (@first_word.downcase == @second_word.downcase)
      return "#{@second_word} can't be an anagram of itself."
    end

    if (@first_word.downcase.length == chars_map.length) & is_same_length?
      result = "These words are anagrams."

    elsif chars_map.length == 0
      result = "These words have no letter matches and are antigrams."
    end

    result
  end

  def chars_map
    shared_letters = []

    @first_word.each_char do |letter|
      if @second_word.downcase.include?(letter.downcase)
        shared_letters.push(letter)
      end
    end
    return shared_letters

  end

  def is_same_length?
    @first_word.length == @second_word.length
  end

  def is_word?(word)
    vowels = ['a','e','i','o','u','y']
    word_vowels_array = []

    word.each_char do |letter|
      word_vowels_array.push(vowels.include?(letter.downcase))
    end

    if word_vowels_array.include?(true)
      return true, word
    end

    return false, 'not_a_word'
  end

end
