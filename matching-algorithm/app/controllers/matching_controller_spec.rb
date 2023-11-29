# spec/controllers/matching_controller_spec.rb
require 'rails_helper'

RSpec.describe MatchingController, type: :controller do
  describe 'POST #match_users' do
    it 'returns a matching score' do
      user_data = { users: [{ name: 'User1' }, { name: 'User2' }] }
      post :match_users, body: user_data.to_json, format: :json
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['matching_score']).to eq(42)
    end
  end
end
