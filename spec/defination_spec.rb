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

  describe('.clear') do
    it('empties the array at first') do
      Defination.new(defination: 'thats really dope').save
      Defination.clear
      expect(Defination.all).to(eq([]))
    end
  end

  describe('#id') do
    it('returns a defination by its id') do
      test_defination = Defination.new(Defination: 'dope stuff bruh')
      expect(test_defination.id).to(eq(1))
    end
  end

  describe('.find') do
    it('returns only a defination based on its id') do
      test_defination = Defination.new(Defination: 'dude')
      test_defination.save
      test_defination2 = Defination.new(Defination: ' wow bruh')
      test_defination2.save
      expect(Defination.find(test_defination.id)).to(eq(test_defination))
    end
  end
end
