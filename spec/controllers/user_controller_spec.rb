require 'rails_helper'

RSpec.describe UserController, type: :controller do

  describe "GET #purchases" do
    it "returns http success" do
      get :purchases
      expect(response).to have_http_status(:success)
    end
  end

end
