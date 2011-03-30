require 'test_helper'

class FizzyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "fizz bizz" do
    result = Fizzy.fizz
    
    # debug puts statments 
    #puts "===="
    #  result.each do |item|
    #  puts item.to_s
    #end
    
    # testing fizzbuzz
    assert_equal 101, result.size
    assert_equal 'fizzbuzz', result[15]
    assert_equal 'fizz', result[3]
    assert_equal 'buzz', result[5]
  end
end
