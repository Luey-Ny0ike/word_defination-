require('rspec')
require('word')
require('defination')
# this is to require the defination class

describe('Word') do
  before do
    Word.clear
    # it clears the array first in order for the .all spec to pass
  end
  describe('#word') do
    it('returns the word as is') do
      test_word = Word.new('Dude')
      expect(test_word.word).to(eq('Dude'))
    end
  end

  describe('#definationz') do
    it('initially returns an empty array of definations for a word') do
      test_word = Word.new('Dude')
      expect(test_word.definationz).to(eq([]))
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

  describe('#id') do
    it('returns a word by its id') do
      test_word = Word.new(word: 'bruh')
      expect(test_word.id).to(eq(1))
    end
  end

  describe('.find') do
    it('returns only one word based on its id') do
      test_word = Word.new(word: 'dude')
      test_word.save
      test_word2 = Word.new(word: 'bruh')
      test_word2.save
      expect(Word.find(test_word.id)).to(eq(test_word))
    end
  end

  describe('#add_def') do
    it('adds a new defination to a word') do
      test_word = Word.new('Dude')
      test_defination = Defination.new('This is a preety sick man')
      test_word.add_def(test_defination)
      expect(test_word.definationz).to(eq([test_defination]))
    end
  end
end
