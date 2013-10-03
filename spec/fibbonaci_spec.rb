require 'spec_helper'
require_relative '../lib/fibbonaci.rb'

describe "#fibbonaci" do

	it "should have a method called fibbonaci_seq" do 
		expect(method(:fibbonaci_seq))
	end


	it "should have one parameter called num" do
		parameters = method(:fibbonaci_seq).parameters
		expect(parameters[0]).to include(:num)
		expect(parameters[0]).to include(:req)
		expect(parameters.length).to eq 1
	end

	it "produce an array with a fibbonaci sequence" do
		expect(fibbonaci_seq(1)).to eq [1]
		expect(fibbonaci_seq(3)).to eq [1,1,2]
		expect(fibbonaci_seq(5)).to eq [1,1,2,3,5]
	end

	it "should raise an error when a non-number is passed as a pararmeter" do
		expect{ fibbonaci_seq("cat") }.to raise_error(NoMethodError)
	end

end