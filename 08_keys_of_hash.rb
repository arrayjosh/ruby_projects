# Get keys of a hash whose values equal to given arguments.
require './assertions.rb'
include Assertions

class Hash
  def keys_of(*args)
    ___
  end
end

assert_equal [:a], {a: 1, b: 2, c: 3}.keys_of(1)
assert_equal [:a, :d], {a: 1, b: 2, c: 3, d: 1}.keys_of(1)
assert_equal [:a, :b, :d], {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)
