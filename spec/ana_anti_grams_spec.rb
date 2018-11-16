require 'ana_anti_grams'
require 'rspec'

describe ('ana_anti_grams') do

  it ('check if two words ara anagrams') do
    expect(anagram()).to(eq(true))
  end

end
