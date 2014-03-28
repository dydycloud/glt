require 'spec_helper'

describe IntroPg do
	before :each do
		@cover_top = build(:cover_top)
		@cover_bottom = build(:cover_bottom)
		@about = build(:about)
	end
  	it "has a valid factory" do
		expect(build(:intro_pg, cover_top: @cover_top, cover_bottom: @cover_bottom, about: @about)).to be_valid
	end
end
