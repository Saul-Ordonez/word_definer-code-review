require('pry')
require('rspec')
require('word')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('.all') do
    it('return empty array if there are no words to display') do
      expect(Word.all).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears all of the words") do
      word1 = Word.new("Hello", nil, "How are you?")
      word1.save()
      word2 = Word.new("Goodbye", nil, "See you later")
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new("Hello", nil, "How are you?")
      word2 = Word.new("Hello", nil, "How are you?")
      expect(word).to(eq(word2))
    end
  end

  describe('#save') do
    it("saves words into array") do
      word = Word.new("Hello", nil, "How are you?")
      word.save()
      word2 = Word.new("Goodbye", nil, "See you later")
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('#find') do
    it("finds a word by the id") do
      word = Word.new("Hello", nil, "How are you?")
      word.save()
      word2 = Word.new("Goodbye", nil, "See you later")
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#delete') do
    it("deletes a word by id") do
      word = Word.new("Hello", nil, "How are you?")
      word.save()
      word2 = Word.new("Goodbye", nil, "See you later")
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word = Word.new("Hello", nil, nil)
      word.save()
      word.update("Goodbye", nil, nil)
      expect(word.word).to(eq("Goodbye"))
    end
  end

end
