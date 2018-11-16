require 'pry'

class Anagramer
  def initialize(word)
    @first_word
    @second_word

    if is_word?(word)
      @first_word = word
    else

      puts "#{word} error"
    end

  end

  def anagram(word_to_test)
    @second_word = word_to_test
    result = "These words are NOT anagrams."

    if (@first_word.downcase == @second_word.downcase)
      return "#{@second_word} can't be an anagram of itself."
    end

    if same_chars_included?() & is_same_length?()
      result = "These words are anagrams."
    end
    result
  end

  def same_chars_included?
    bool_array = []
    @first_word.each_char do |letter|
      bool_array.push(@second_word.downcase.include?(letter.downcase))
    end
    if bool_array.include?(false)
      return false
    end
    true
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
      return word
    end

    false
  end

  # def is_same_ascii_sum?
  #   first_word_sum = 0
  #   second_word_sum = 0
  #
  #   @first_word.each_char do |letter|
  #     first_word_sum += letter.ord
  #   end
  #
  #   @second_word.each_char do |letter|
  #     second_word_sum += letter.ord
  #   end
  #
  #   first_word_sum == second_word_sum
  # end

end

# ttt = Anagramer.new("ttt")
