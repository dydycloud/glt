require 'spec_helper'

describe CoverTop do
	it "has a valid factory" do
		expect(build(:cover_top)).to be_valid
	end
end
