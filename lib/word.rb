class Word
  @@words = []
  attr_reader(:word, :id)
  # used the attribute reader to access the attributes passed as arguments for the
  # initialize method
  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@words.length.+1
    # called the .length method to add a numer by one and assingn it to a word
    # the first word would be 1 the fifth 5 and so on
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
end
