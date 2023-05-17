require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/'
      expect(response).to have_http_status(:success)
      expect(response).to render_template('users/index')
      expect(response.body).to include('Users')
      assert_select 'h1', 'Users'
    end
  end
  describe 'GET /show' do
    it 'returns http success' do
      get '/users/1'
      expect(response).to have_http_status(:success)
      expect(response).to render_template('users/show')
      expect(response.body).to include('User data')
      assert_select 'h2', 'User data'
    end
  end
end
