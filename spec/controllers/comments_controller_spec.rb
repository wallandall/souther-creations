require 'rails_helper'
describe CommentsController, type: :controller do
  context 'autehnticated user' do
    before(:each) do
      @user = FactoryBot.create(:test_user)
      sign_in @user
    end
    it "can add comments" do
      @category = FactoryBot.create(:test_category)
      @product = FactoryBot.create(:test_product, category_id: @category.id)
      @comment = FactoryBot.build(:test_comment, product_id: @product.id, user: @user )
      expect(@comment).to be_valid
     end
   end
end
