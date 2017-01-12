# Write a function to parse some dates and return a standard format. Hint: the help page might be of use.
require './assertions.rb'
include Assertions

def pretty_date(date)
  ___
end

assert_equal pretty_date("11-30-1835"), "Nov 30, 1835"
assert_equal pretty_date("July 20, 1933"), "Jul 20, 1933"
assert_equal pretty_date("1922-11-11"), "Nov 11, 1922"
assert_equal pretty_date("9/20/1978"), "Sep 20, 1978"
