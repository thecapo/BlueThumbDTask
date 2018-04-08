require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "shows searchbox text present" do
      get :index
      searches = flickr.photos.search(text: [:search])
      expect(searches).to be_present
    end 
  end
end
