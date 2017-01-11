module Assertions
  FailedAssertionError = Class.new(StandardError)

  def flunk(msg)
    raise FailedAssertionError, msg
  end

  def assert(condition, msg=nil)
    msg ||= "Failed assertion."
    flunk(msg) unless condition
    true
  end

  def assert_equal(expected, actual, msg=nil)
    msg ||= "Expected #{expected.inspect} to equal #{actual.inspect}"
    assert(expected == actual, msg)
  end

  def assert_not_equal(expected, actual, msg=nil)
    msg ||= "Expected #{expected.inspect} to not equal #{actual.inspect}"
    assert(expected != actual, msg)
  end

  def assert_nil(actual, msg=nil)
    msg ||= "Expected #{actual.inspect} to be nil"
    assert(nil == actual, msg)
  end

  def assert_not_nil(actual, msg=nil)
    msg ||= "Expected #{actual.inspect} to not be nil"
    assert(nil != actual, msg)
  end

  def assert_match(pattern, actual, msg=nil)
    msg ||= "Expected #{actual.inspect} to match #{pattern.inspect}"
    assert pattern =~ actual, msg
  end

  def assert_raise(exception)
    begin
      yield
    rescue Exception => ex
      expected = ex.is_a?(exception)
      assert(expected, "Exception #{exception.inspect} expected, but #{ex.inspect} was raised")
      return ex
    end
    flunk "Exception #{exception.inspect} expected, but nothing raised"
  end

  def assert_nothing_raised
    begin
      yield
    rescue Exception => ex
      flunk "Expected nothing to be raised, but exception #{exception.inspect} was raised"
    end
  end
end
