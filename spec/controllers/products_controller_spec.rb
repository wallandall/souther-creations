require 'rails_helper'

describe ProductsController, type: :controller do
  before(:each) do
    @category = FactoryBot.create(:test_category)
    @product = FactoryBot.create(:test_product, category_id: @category.id)
    @user = FactoryBot.create(:test_user, admin: true)
  end

  context 'unauthenticated user' do
    it 'cannot edit' do
      get :edit, params:{id: @product.id}
      expect(response).to redirect_to(products_path)
      expect(flash[:notice]).to match("You need to be an Admin to perform this action!")
    end

    it 'renders the show page' do
      get :show, params:{id: @product.id}
      expect(response).to be_ok
      expect(response).to render_template('show')
    end

    it 'renders the index page' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end

    it 'redirects to login page' do
      get :edit, params: {id: @product.id}
      expect(response).to redirect_to products_path
    end
  end

  context 'admin user' do
    before do
      @admin = FactoryBot.create(:test_user, admin: true)
      sign_in @admin
    end

    it "can add product" do
      get :new, params: {id: @product}
      expect(response).to be_ok
     end

     it 'can delete a product' do
       delete :destroy, params: { id: @product.id }
       expect(response).to redirect_to products_url
     end
   end
end
