# Your coworker did a bad job defining a class. Fix it for him using #method_missing.
# Hint: do some reading on "ruby method_missing" if you don't know what this is!
require './assertions.rb'
include Assertions

class Person
  def initialize(name, age, incoming_race)
    @name = name
    @age = age
    self.race = incoming_race
  end

  def nam
    @name.split.map(&:capitalize).join(" ")
  end

  def agE
    @age
  end

  def method_missing(m, *args)
    ___
    else
      super
    end
  end
end

person = Person.new("kurt vonnegut", 89, "caucasian")

assert_equal person.name, "Kurt Vonnegut"
assert_equal person.race, "Caucasian"
assert_equal person.age, 89
