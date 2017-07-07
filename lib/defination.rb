class Defination
  @@definations = []
  define_method(:initialize) do |defination|
    @defination = defination
  end

  define_method(:defination) do
    @defination
  end

  define_singleton_method(:all) do
    @@definations
  end

  define_method(:save) do
    @@definations.push(self)
  end
  # self in this case is the input we will gather from the user
end
