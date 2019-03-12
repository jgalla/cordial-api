require 'rails_helper'

RSpec.describe "CocktailIngredients", type: :request do
  describe "GET /cocktail_ingredients" do
    it "works! (now write some real specs)" do
      get cocktail_ingredients_path
      expect(response).to have_http_status(200)
    end
  end
end
