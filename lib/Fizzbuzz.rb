class FizzbuzzSingle
	def do_it(number)
		
		if number == nil
			raise ArgumentError.new("The number can't be nil, currently it is")
		elsif !number.is_a?(Numeric)
			raise ArgumentError.new("The number must be a numeric value; currently #{number}")
		elsif number < 0
			raise ArgumentError.new("The number must be positive; currently #{number}")
		elsif number % 15 == 0
			"FizzBuzz"
		elsif number % 5 == 0
			"Buzz"
		elsif number % 3 == 0
			"Fizz"
		else
			number.to_s
		end
	end
end

class Fizzbuzz
	def initialize(max_num)
		fizzy_single = FizzbuzzSingle.new
		@fizz_buzzed_array = (1..max_num).map do |num|
			fizzy_single.do_it(num)
		end
	end
	
	def to_a
		@fizz_buzzed_array
	end
	
	
end


