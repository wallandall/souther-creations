require 'rails_helper'
describe CategoriesController, type: :controller do
  context 'authenticated user' do
    before(:each) do
      @user = FactoryBot.create(:test_user, admin: true)
      sign_in @user
    end
    it "can add delete" do
      @category = FactoryBot.build(:test_category)
      expect{
        delete :destroy, category: @category.id
       }
      expect(response).to be_successful
   end
 end
end
