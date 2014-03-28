require 'spec_helper'

describe About do
  	it "has a valid factory" do
		expect(build(:about)).to be_valid
	end
end
