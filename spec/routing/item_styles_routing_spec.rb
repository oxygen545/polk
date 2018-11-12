require "rails_helper"

RSpec.describe ItemStylesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/item_styles").to route_to("item_styles#index")
    end

    it "routes to #new" do
      expect(:get => "/item_styles/new").to route_to("item_styles#new")
    end

    it "routes to #show" do
      expect(:get => "/item_styles/1").to route_to("item_styles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_styles/1/edit").to route_to("item_styles#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/item_styles").to route_to("item_styles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_styles/1").to route_to("item_styles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_styles/1").to route_to("item_styles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_styles/1").to route_to("item_styles#destroy", :id => "1")
    end
  end
end
