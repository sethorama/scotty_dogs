require 'rails_helper'

RSpec.describe "Puppies", type: :request do
  describe "GET /puppies" do
    it "works! (now write some real specs)" do
      get puppies_path
      expect(response).to have_http_status(200)
    end
  end
end
