require 'FizzbuzzSingle'

describe FizzbuzzSingle do 
	describe "#new" do 
		it "creates the object" do
			FizzbuzzSingle.new.should be_an_instance_of FizzbuzzSingle
		end
	end
end
