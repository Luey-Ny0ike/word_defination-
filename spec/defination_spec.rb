require('rspec')
require('defination')

describe('Defination') do
  describe('#defination') do
    it('returns defination as is') do
      test_defination = Defination.new('a cool person')
      expect(test_defination.defination).to(eq('a cool person'))
    end
  end

  describe('.all') do
    it('returns an empty array at first') do
      expect(Defination.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word and pushes it to the empty array') do
      test_defination = Defination.new(word: 'something cool')
      test_defination.save
      expect(Defination.all).to(eq([test_defination]))
    end
  end
end
