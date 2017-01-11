# Return a sample of five random numbers from an array. They should be unique week to week.
require './assertions.rb'
include Assertions

superset = (1..500).to_a
week1 = superset.___
week2 = superset.___

assert_equal (week1.length == 5 && week2.length == 5), true
assert_equal (week1.sort != week2.sort), true
