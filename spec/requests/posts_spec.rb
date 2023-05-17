require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/1/posts/'
      expect(response).to have_http_status(:success)
      expect(response).to render_template('posts/index')
      expect(response.body).to include('Posts#index')
      assert_select 'h1', 'Posts#index'
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/users/1/posts/1'
      expect(response).to have_http_status(:success)
      expect(response).to render_template('posts/show')
      expect(response.body).to include('Posts#show')
      assert_select 'h1', 'Posts#show'
    end
  end
end
