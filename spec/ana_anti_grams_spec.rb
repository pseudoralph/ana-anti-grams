require 'ana_anti_grams'
require 'rspec'

describe ('ana_anti_grams') do
  it ('should reject same word comparison') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("ruby")).to(eq("ruby can't be an anagram of itself."))
    expect(ruby.anagram("ruBy")).to(eq("ruBy can't be an anagram of itself."))
  end

  it ('check if two words ara anagrams') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("bury")).to(eq("These words are anagrams."))
    expect(ruby.anagram("fury")).to(eq("These words are NOT anagrams."))
  end

  it ('determine anagram status on a case insensitive basis') do
    expect(tea = Anagramer.new("tEa"))
    expect(tea.anagram("EAt")).to(eq("These words are anagrams."))
  end

  it ('report an error if Anagrammer object is created with a non-word (no vowels)') do
    expect { ttt = Anagramer.new("ttt") }.to raise_error(ArgumentError)
    # expect { raise "oops" }.to raise_error
  end



end
