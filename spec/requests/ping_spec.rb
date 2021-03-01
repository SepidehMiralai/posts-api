require 'rails_helper'

RSpec.describe 'post API ping', type: :request do
  # Test suite for GET /ping
  describe 'GET /ping' do
    # make HTTP get request before each example
    before { get '/api/ping' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end