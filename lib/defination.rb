class Defination
  @@definations = []
  define_method(:initialize) do |defination|
    @defination = defination
    @id = @@definations.length.+1
  end

  define_method(:defination) do
    @defination
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@definations
  end

  define_method(:save) do
    @@definations.push(self)
  end
  # self in this case is the input we will gather from the user

  define_singleton_method(:clear) do
    @@definations = []
  end

  define_singleton_method(:find) do |id|
    found_definations = nil
    @@definations.each do |defination|
      found_definations = defination if defination.id.eql?(id)
      # found_definations is equal to  defination if the input defination id is equal to the id
      # passed as an argument for the find method
    end
    found_definations
  end
end
