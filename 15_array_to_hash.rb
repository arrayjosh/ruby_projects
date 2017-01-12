# Define an instance method on the Array class that will convert the array into a hash.
# The hash values should be the same as the array values,
# but the keys of the hash should be defined by a block sent to the method.

require './assertions.rb'
include Assertions

class Array
  def to_hash_values(&block)
    ___
  end
end

ary = [1,2,3,4,5]
#Keys should be double
result = ary.to_hash_values{|a| a*2}
assert_equal(result[2], 1)
assert_equal(result[6], 3)
assert_equal(result[10], 5)

#Keys should be string of value
result = ary.to_hash_values{|a| a.to_s}
assert_equal(result["1"], 1)
assert_equal(result["3"], 3)
assert_equal(result["5"], 5)
