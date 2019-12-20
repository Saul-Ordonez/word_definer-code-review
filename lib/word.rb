class Word
  attr_reader :word, :id, :definition

  @@words = {}
  @@total_rows = 0

  def initialize(word, id, definition)
    @word = word
    @id = id || @@total_rows += 1
    @definition = definition
  end

  def self.all
    @@words.values()
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def save
    @@words[self.id] = Word.new(self.word, self.id, self.definition)
  end

  def ==(word_to_compare)
    self.word() == word_to_compare.word()
  end

  def self.find(id)
    @@words[id]
  end

  def delete
    @@words.delete(self.id)
  end

  def update(word, id, definition)
    @word = (word != '') ? word : @word
    @definition = (definition != '') ? definition : @definition
  end

end
