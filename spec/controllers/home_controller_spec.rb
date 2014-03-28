require 'spec_helper'

describe HomeController do
  before :each do    
    @cover_top = build(:cover_top)
    @cover_bottom = build(:cover_bottom)
    @about = build(:about)   
    @intro_pg = create(:intro_pg, cover_top: @cover_top, cover_bottom: @cover_bottom, about: @about )
  end

  describe "GET 'index'" do
    it "return an intro object with an array" do
      get 'index'
      expect(assigns(:intro)).to match_array([@intro_pg])
    end

    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "return an intro object with all the information for intro page" do
      get 'about'
      expect(assigns(:intro)).to eq(@intro_pg)
    end

    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'humeur'" do
    it "returns http success" do
      get 'humeur'
      response.should be_success
    end
  end

  describe "GET 'actu'" do
    it "returns http success" do
      get 'actu'
      response.should be_success
    end
  end

  describe "GET 'instantanes'" do
    it "returns http success" do
      get 'instantanes'
      response.should be_success
    end
  end

end
