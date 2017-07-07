class Word
  attr_reader(:word)
  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    # used the attribute reader to access the attributes passed as arguments for the
    # initialize method
  end
end
