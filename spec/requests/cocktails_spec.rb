require 'rails_helper'

RSpec.describe "Cocktails", type: :request do
  describe "GET /cocktails" do
    it "works! (now write some real specs)" do
      get cocktails_path
      expect(response).to have_http_status(200)
    end
  end
end
