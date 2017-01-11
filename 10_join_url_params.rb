# Join parameters to a link.
require './assertions.rb'
include Assertions

def join_params(link, url_parameters)
  ___
end

url_params = {
  'first_param'  => 123,
  'second_param' => 456,
  'third_param'  => 678
}

url = 'http://www.foobar.com'

assert_equal 'http://www.foobar.com?first_param=123&second_param=456&third_param=678', join_params(url, url_params)
