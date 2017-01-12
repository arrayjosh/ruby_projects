# Write code that will make true equal false in the following problem.
require './assertions.rb'
include Assertions

alias false true

assert_equal true, false
