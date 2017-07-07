require('rspec')
require('word')

describe('Word') do
  describe('#word') do
    it('returns the word as is') do
      test_word = Word.new(word: 'Dude')
      expect(test_word.word).to(eq('Dude'))
    end
  end

  describe('.all')do
    it("returns an empty array at first")do
      expect(Word.all).to(eq([]))
    end
  end
end
