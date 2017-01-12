# Implement a hash class which does not distinguish between symbols and strings for its keys.

require './assertions.rb'
include Assertions

class HashWithIndifferentAccess
  ___
end

composers = HashWithIndifferentAccess.new
composers[:Janacek] = "Leos Janacek"
composers["Sweelinck"] = "Jan Pieterszoon Sweelinck"

mathematicians = HashWithIndifferentAccess["Yutaka", "Taniyama", :Alonzo, "Church"]

assert_equal composers["Janacek"], "Leos Janacek"
assert_equal composers[:Sweelinck], "Jan Pieterszoon Sweelinck"
assert_equal mathematicians[:Yutaka], "Taniyama"
assert_equal (mathematicians["Alonzo"] == mathematicians[:Alonzo]), true
