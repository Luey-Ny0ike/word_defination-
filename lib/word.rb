class Word
  @@words = []
  define_method(:initialize) do |word|
    @word = word
    @id = @@words.length.+1
    @definationz = []
    # called the .length method to add a numer by one and assingn it to a word
    # the first word would be 1 the fifth 5 and so on
  end

  define_method(:id) do
    @id
  end

  define_method(:word) do
    @word
  end

  define_method(:definationz)do
    @definationz
  end

  define_method(:add_defination) do |defination|
    @definationz.push(defination)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end
  # self in this case is the input we will gather from the user

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_words = nil
    @@words.each do |word|
      found_words = word if word.id.eql?(id)
      # found_words is equal to  word if the input word id is equal to the id
      # passed as an argument for the find method
    end
    found_words
  end
end
