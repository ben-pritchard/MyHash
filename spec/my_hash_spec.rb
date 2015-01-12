require("rspec")
require("my_hash")
require("pry")

describe(MyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end

    it ("retrieves a stored value by its key for multiple keys") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "trivial")
      test_hash.store("fish", "awesome")
      expect(test_hash.fetch("fish")).to(eq("awesome"))
    end
  end

  describe("#keys_fetch") do
    it ("returns all the keys") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "trivial")
      test_hash.store("fish", "awesome")
      expect(test_hash.keys_fetch()).to(eq("kitten, dog, fish"))
    end
  end
  describe("#value_fetch") do
    it ("returns all the values") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "trivial")
      test_hash.store("fish", "awesome")
      expect(test_hash.value_fetch()).to(eq("cute, trivial, awesome"))
    end
  end

  describe("#fetch_index") do
    it ("retrieves the array pair at a given index of a hash") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "trivial")
      test_hash.store("fish", "awesome")
      expect(test_hash.fetch_index(1)).to(eq(["dog", "trivial"]))
    end
  end

  describe("#length") do
    it ("retrieves the number of array pairs in a hash") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "trivial")
      test_hash.store("fish", "awesome")
      expect(test_hash.length()).to(eq(3))
    end
  end

  describe("#merge_hashes") do
    it ("merges two hash tables into one hash table") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "trivial")
      test_hash.store("fish", "awesome")
      test_hash2 = MyHash.new()
      test_hash2.store("batman", "rich")
      test_hash2.store("superman", "kryptonite")
      test_hash2.store("aquaman", "nothing")
      expect(test_hash.merge_hashes(test_hash2).fetch("superman")).to(eq("kryptonite"))
    end
  end
end
