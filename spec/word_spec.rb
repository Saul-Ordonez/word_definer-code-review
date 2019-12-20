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
      word = Word.new("Hello", nil)
      word.save()
      word2 = Word.new("Goodbye", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

end
