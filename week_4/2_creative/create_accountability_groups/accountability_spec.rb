require_relative "my_solution"

describe 'accountability_method' do
	let (:array_1) {[]}
	let (:array_2) {["First1 Last1", "First2 Last2"]}
	let (:array_3) {["First1 Last1", "First2 Last2", "First3 Last3", "First4 Last4", "First5 Last5", "First6 Last6", "First7 Last7"]}

	it "is defined as a method" do
		defined?(accountability_method).should eq "method"
	end

	it "requires a single argument" do
		method(:accountability_method).arity.should eq 1
	end

	it "returns nothing for an empty array" do
		accountability_method(array_1).length.should eq 0
	end

	it "returns one accountability group when less than 4 names" do
		accountability_method(array_2).length.should eq 1
	end

	it "returns multiple accountability groups, including some that may not have 4 names" do
		accountability_method(array_3).length.should eq 2
	end
end