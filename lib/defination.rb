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
end
