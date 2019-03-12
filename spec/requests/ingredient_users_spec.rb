require 'rails_helper'

RSpec.describe "IngredientUsers", type: :request do
  describe "GET /ingredient_users" do
    it "works! (now write some real specs)" do
      get ingredient_users_path
      expect(response).to have_http_status(200)
    end
  end
end
