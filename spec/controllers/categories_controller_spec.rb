require 'rails_helper'

describe CategoriesController, type: :controller do
  let(:category){
    Category.create!(
      product_category: "Test Category-Comments-Controller",
      description: "A test category for Comments",
      image_url: "products/p1.jpg"
    )
  }

  let(:user){ User.create!(email: "test1@test.com", password: "test123", admin: true) }


  context 'admin user' do
   before(:each) do
     sign_in user
   end
   it "can delete cattegory" do
     expect{
       delete :destroy, category: category.id
     }
     expect(response).to be_successful
   end
  end
end
