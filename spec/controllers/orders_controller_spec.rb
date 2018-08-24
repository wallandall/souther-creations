require 'rails_helper'

describe OrdersController, type: :controller do
  @user = FactoryBot.create(:test_user)

  context 'unauthenticated user' do
    it 'redirects to login' do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
