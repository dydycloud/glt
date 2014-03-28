require 'spec_helper'

describe CoverBottom do
  it "has a valid factory" do
		expect(build(:cover_bottom)).to be_valid
	end
end
