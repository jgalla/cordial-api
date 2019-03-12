require "rails_helper"

RSpec.describe CocktailIngredientsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cocktail_ingredients").to route_to("cocktail_ingredients#index")
    end


    it "routes to #show" do
      expect(:get => "/cocktail_ingredients/1").to route_to("cocktail_ingredients#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cocktail_ingredients").to route_to("cocktail_ingredients#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cocktail_ingredients/1").to route_to("cocktail_ingredients#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cocktail_ingredients/1").to route_to("cocktail_ingredients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cocktail_ingredients/1").to route_to("cocktail_ingredients#destroy", :id => "1")
    end

  end
end
