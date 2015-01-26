class Phrase
  attr_accessor :phrase

  PUNCTUATION = ':!@#$%^&*()'

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_hash = {}
    self.word_list.each do |word|
      word_hash.include?(word) ? word_hash[word] += 1 : word_hash[word] = 1
    end
    return word_hash
  end

  def self.word_list
    self.phrase.split.each do |word|
      self.remove_punctuation(word)
    end
  end

  def self.remove_punctuation(string)
    PUNCTUATION.each_char { |char| string.sub!(char, '')  }
    return string
  end
end
