class MyHash
  define_method(:initialize) do
    @array_squared = []
    @array_to_fetch = []
    @merged_array = []
  end

  define_method(:store) do |key, element|
    @array_pair = []
    @array_pair.push(key)
    @array_pair.push(element)
    @array_squared.push(@array_pair)
  end

  define_method(:fetch) do |search|
    @array_squared.each() do |array|
      if search == array.first()
        @array_to_fetch.push(array.last())
      end
    end
    @array_to_fetch[0]
  end

  define_method(:keys_fetch) do
    @keys_array = []
    @array_squared.each() do |array_pair|
        @keys_array.push(array_pair.first())
    end
    @keys_array.join(", ")
  end

  define_method(:value_fetch) do
    @value_array = []
    @array_squared.each() do |array_pair|
      @value_array.push(array_pair.last())
    end
    @value_array.join(", ")
  end

  define_method(:fetch_index) do |index|
    @array_squared[index]
  end

  define_method(:length) do
    @array_squared.length()
  end

  define_method(:merge_hashes) do |hash2|
    counter = 0
    until counter == hash2.length()
      @array_squared.push(hash2.fetch_index(counter))
      counter = counter.+(1)
    end
    @array_squared

    merged_hash = MyHash.new()
    @array_squared.each() do |array_pair|
      merged_hash.store(array_pair.first(), array_pair.last())
    end
    merged_hash
  end

end
