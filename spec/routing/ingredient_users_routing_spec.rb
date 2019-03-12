require "rails_helper"

RSpec.describe IngredientUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingredient_users").to route_to("ingredient_users#index")
    end


    it "routes to #show" do
      expect(:get => "/ingredient_users/1").to route_to("ingredient_users#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/ingredient_users").to route_to("ingredient_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ingredient_users/1").to route_to("ingredient_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ingredient_users/1").to route_to("ingredient_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingredient_users/1").to route_to("ingredient_users#destroy", :id => "1")
    end

  end
end
