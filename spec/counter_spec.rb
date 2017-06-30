require 'rspec'
require 'counter'

RSpec.describe CountOccurence  do
	context "considering inputs are strings" do
		it "takes two strings, needle and haystack" do
			counter=CountOccurence.new
			expect(counter.countWord("hi"," hi everyone here, i meant Hi")).to eq 1
		end
		it "ignores cases when word to search is found but is suffixed by !" do
			counter=CountOccurence.new
			expect(counter.countWord("hi","hi! everyone here")).to eq 0
		end
		# it "throw and error when empty input is passed" do
		# 	counter=CountOccurence.new
		# 	expect(counter.countWord("","hi! everyone here")).to raise_error("Error")
		# end
	end
end