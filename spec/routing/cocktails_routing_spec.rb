require "rails_helper"

RSpec.describe CocktailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cocktails").to route_to("cocktails#index")
    end


    it "routes to #show" do
      expect(:get => "/cocktails/1").to route_to("cocktails#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cocktails").to route_to("cocktails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cocktails/1").to route_to("cocktails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cocktails/1").to route_to("cocktails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cocktails/1").to route_to("cocktails#destroy", :id => "1")
    end

  end
end
