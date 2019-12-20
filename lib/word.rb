class Word
  attr_reader :id, :word

  @@words = {}
  @@total_rows = 0

  def initialize(word, id)
    @id = id || @@total_rows += 1
    @word = word
  end

  def self.all
    @@words.values()
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end
end
