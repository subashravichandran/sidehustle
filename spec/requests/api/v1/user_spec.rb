require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  describe "GET /index" do
    let!(:ironman) { User.create(name: 'Tony stark', dob: Date.parse('1970-05-29')) }
    let!(:captain_america) { User.create(name: 'Steve Rogers', dob: Date.parse('1922-01-15')) }

    it 'returns list of available users' do
      get '/api/v1/users'

      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
    
      expect(json_response.size).to eq(2)
      expect(json_response[0]['name']).to eq('Tony stark')
      expect(json_response[1]['name']).to eq('Steve Rogers')
    end
  end
end
