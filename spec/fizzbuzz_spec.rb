require 'Fizzbuzz'

describe FizzbuzzSingle do 
	describe "#new" do 
		it "#name creates the object" do
			FizzbuzzSingle.new.should be_an_instance_of FizzbuzzSingle
		end
	end
	
	describe "do_it" do
		before do
			@fizzy_single = FizzbuzzSingle.new
		end
		
		it "returns 1 if passed a 1" do
			@fizzy_single.do_it(11).should eq("11")
		end
		
		it "returns fizz if passed number divisable by 3" do
			@fizzy_single.do_it(3).should eq("Fizz")
			@fizzy_single.do_it(6).should eq("Fizz")
			@fizzy_single.do_it(9).should eq("Fizz")
		end
		
		it "returns Buzz if passed a number divisable by 5" do
			@fizzy_single.do_it(10).should eq("Buzz")
			@fizzy_single.do_it(5).should eq("Buzz")
		end
		
		it "returns FizzBuzz if passed a number divisable by both 3 and 5" do
			@fizzy_single.do_it(30).should eq("FizzBuzz")
		end
		
		it "should raise an error if it isn't passed a number" do
			expect{@fizzy_single.do_it("fifteen")}.to raise_error
		end
		
		it "should rais an error if it is passed a negitive number" do
			expect{@fizzy_single.do_it(-5)}.to raise_error
		end
		
	end
	
end

describe Fizzbuzz do
	describe "#new" do
		it "Creates the Object" do
			Fizzbuzz.new.should be_an_instance_of Fizzbuzz
		end
	end
end

