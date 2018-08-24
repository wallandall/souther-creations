require 'rails_helper'

describe CommentsController, type: :controller do
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
  let(:user){ User.create!(email: "test1@test.com", password: "test123") }


  context 'authenticated user' do
   before(:each) do
     sign_in user
   end
   it "can add comments" do
     expect(Comment.create!(body: "Comment from authenticated user", product_id: product.id,   rating: 5, user: user)).to be_valid
   end
  end
end
