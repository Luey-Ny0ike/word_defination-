require('rspec')
require('word')

describe('Word') do
  describe('#word') do
    it('returns the word as is') do
      test_word = Word.new(word: 'Dude')
      expect(test_word.word).to(eq('Dude'))
    end
  end

  describe('.all') do
    it('returns an empty array at first') do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word and pushes it to the empty array') do
      test_word = Word.new(word: 'dude')
      test_word.save
      expect(Word.all).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('empties the array at first') do
      Word.new(word: 'msee').save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end
end
