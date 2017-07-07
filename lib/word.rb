class Word
  @@words = []
  attr_reader(:word, :id)
  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@words.length.+1
    # used the attribute reader to access the attributes passed as arguments for the
    # initialize method
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
