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
      word1 = Word.new("Hello", nil)
      word1.save()
      word2 = Word.new("Goodbye", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('#==') do
  it("is the same word if it has the same attributes as another word") do
    word = Word.new("Hello", nil)
    word2 = Word.new("Hello", nil)
    expect(word).to(eq(word2))
  end
end

  describe('#save') do
      it("saves words into array") do
        word1 = Word.new("Hello", nil)
        word1.save()
        word2 = Word.new("Goodbye", nil)
        word2.save()
        expect(Word.all).to(eq([word1, word2]))
      end
    end

end
