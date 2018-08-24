require 'rails_helper'

describe UsersController, type: :controller do
#  let(:user1) { User.create!(email: "test1@test.com", password: "test123") }
#  let(:user2) { User.create!(email: "test2@test.com", password: "test123") }
before(:each) do
  @user1 = FactoryBot.create(:test_user)
  @user2 = FactoryBot.create(:test_user)
end


  describe 'Get #show' do
    context 'when user is logged in' do
      before(:each) do
        sign_in @user1
      end
      it 'loads correct user details' do
        get :show, params: { id: @user1.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq @user1
      end
    end

    context 'when a user is not logged in' do
      it "redirects to login if user is not logged in" do
        get :show, params: { id: @user1.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'when a user is logged in try to acces other users page' do
      before(:each) do
        sign_in @user2
      end
      it 'redirect to home' do
        get :show, params: { id: @user1.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
