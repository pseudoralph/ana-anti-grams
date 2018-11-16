require 'ana_anti_grams'
require 'rspec'

describe ('ana_anti_grams') do

  it ('check if two words ara anagrams') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("bury")).to(eq("These words are anagrams."))
    expect(ruby.anagram("fury")).to(eq("These words are NOT anagrams."))
  end

end
