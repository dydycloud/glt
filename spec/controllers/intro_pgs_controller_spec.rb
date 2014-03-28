require 'spec_helper'

describe IntroPgsController do
  before :each do    
    @cover_top = build(:cover_top)
    @cover_bottom = build(:cover_bottom)
    @about = build(:about)   
    @intro_pg = create(:intro_pg, cover_top: @cover_top, cover_bottom: @cover_bottom, about: @about )
  end

#Get Request
  context "GET Request" do
    describe "#index" do
      it "return an object with all the information for intro page" do
        get 'index'
        expect(assigns(:intro)).to match_array([@intro_pg])
      end

      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end

    describe "#new" do
      it "returns http success" do
        get 'new'
        response.should be_success
      end
    end

    describe '#edit' do
      it "assigns the requested contact to @intro" do
        get :edit, id: @intro_pg
        expect(assigns(:intro)).to eq @intro_pg
      end
    end
  end

#Post Request
  context "POST Request" do
    describe "#create" do
      it "save a new intro page une the database" do
        expect{
          post :create, intro_pg: attributes_for(:intro_pg)
        }.to change(IntroPg, :count).by(1)
      end

      it "redirects to introPgs#index" do
        post :create, intro_pg: attributes_for(:intro_pg)
        expect(response).to redirect_to intro_pgs_path
      end
    end
  end

#Patch Request
  context "PATCH Request" do
    describe '#update' do
      it "located the requested @intro" do
        get :edit, id: @intro_pg
        expect(assigns(:intro)).to eq @intro_pg
      end

      it "changes @intro_pg's attributes" do
        patch :update, id: @intro_pg, intro_pg: attributes_for(:intro_pg, titre: "Landing", cover_top: @cover_top, cover_bottom: @cover_bottom, about: @about)
        @intro_pg.reload
        expect(@intro_pg.titre).to eq("Landing")
      end
    end  
  end
end
