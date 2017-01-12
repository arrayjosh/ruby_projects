# Sometimes math isn't as easy as you might expect.
require './assertions.rb'
include Assertions

def math_is_easy?
  (129.95 * ___) == 12995
end

assert_equal math_is_easy?, true
