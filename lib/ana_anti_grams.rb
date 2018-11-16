class Anagramer
  def initialize(word)
    if is_word?(word)
      @base_word = word.gsub(/\W/, '')
    else
      raise ArgumentError, "ERROR: #{word} is not a word"
    end
  end

  def anagram(word_to_test)
    result = "These words are NOT anagrams."

    if is_word?(word_to_test)
      word_to_test = word_to_test.gsub(/\W/, '')
      if (@base_word.downcase == word_to_test.downcase)
        return "#{word_to_test} can't be an anagram of itself."
      end
    else
      return "ERROR-not_a_word: #{word_to_test} contains no vowels. Try again."
    end

    if (@base_word.length == chars_map(word_to_test).length) & is_same_length?(word_to_test)
      result = "These words are anagrams."
    elsif chars_map(word_to_test).length == 0
      result = "These words have no letter matches and are antigrams."
    end
    result
  end

  def chars_map(word_to_test)
    shared_letters = []

    @base_word.each_char do |letter|
      if word_to_test.downcase.include?(letter.downcase)
        shared_letters.push(letter)
      end
    end
    shared_letters
  end

  def is_same_length?(word_to_test)
    @base_word.length == word_to_test.length
  end

  def is_word?(word)
    vowels = ['a','e','i','o','u','y']
    word_vowels_array = []

    word.each_char do |letter|
      word_vowels_array.push(vowels.include?(letter.downcase))
    end

    if word_vowels_array.include?(true)
      return true
    end
    false
  end
end
