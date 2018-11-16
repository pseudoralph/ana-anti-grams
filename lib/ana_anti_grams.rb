require 'pry'

class Anagramer
  def initialize(word)
    if is_word?(word)[0]
      @first_word = is_word?(word)[1]
    else
      raise ArgumentError, "ERROR: #{is_word?(word)[1]}"
    end

    @second_word
  end

  def anagram(word_to_test)
    if is_word?(word_to_test)[0]
      @second_word = is_word?(word_to_test)[1]
    else
      return "ERROR-#{is_word?(word_to_test)[1]}: #{word_to_test} contains no vowels. Try again."
    end
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
      return true, word
    end

    return false, 'not_a_word'
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

# ruby = Anagramer.new('ruby')
# puts ruby.anagram('bury')
# puts ruby.anagram('brrr')
