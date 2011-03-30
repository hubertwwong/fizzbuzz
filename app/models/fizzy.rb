class Fizzy < ActiveRecord::Base
  
  # Stores Fizz Buzz in an array and returns it.
  def self.fizz
    result = Array.new
    
    # main loop for fizzbuzz
    for i in 1..100 do
      if i % 15 == 0
        result[i] = 'fizzbuzz'
      elsif i % 5 == 0
        result[i] = 'buzz'
      elsif i % 3 == 0
        result[i] = 'fizz'
      else
        result[i] = i.to_s
      end
    end
    
    # return the result of fizzbuzz
    result
  end
  
end
