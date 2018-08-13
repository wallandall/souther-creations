require 'rails_helper'

describe ProductsController, type: :controller do
  let(:user){ User.create!(email: "test1@test.com", password: "test123") }
  let(:category){
    Category.create!(
      product_category: "Test Category-Comments-Controller",
      description: "A test category for Comments",
      image_url: "products/p1.jpg"
    )
  }
  let(:product) {
    Product.create!(
      name: "Product-test",
      description: "This is a test ptoduct",
      image_url: "products/s2.jpg",
      category_id: category.id
    )
  }

  context 'unauthenticated user' do
    it 'cannot edit' do
      get :edit, params:{id: product.id}
      expect(response).to redirect_to(products_path)
      expect(flash[:notice]).to match("You need to be an Admin to perform this action!")
    end
  end
end
