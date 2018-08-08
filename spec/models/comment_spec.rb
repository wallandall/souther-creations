require 'rails_helper'

describe Comment do
  context "if product has comments" do
    product_category = Category.create!(
      product_category: "Test Category-Comments",
      description: "A test category for Comments",
      image_url: "products/p1.jpg"
    )
    let(:product) {
      Product.create!(
        name: "Product-test",
        description: "This is a test ptoduct",
        image_url: "products/s2.jpg",
        category_id: product_category
      )
    }

    let(:user) {
      User.create!(email: "test@test.com", password: "test123")
    }

    it "is invalid without a comment" do
      expect(Comment.new(rating: 5, user: user)).not_to be_valid
    end

    it "is invalid with a rating grater than 5" do
      expect(Comment.new(rating: 6, user: user, body: "invalid comment")).not_to be_valid
    end
  end
end
