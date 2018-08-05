require 'rails_helper'

describe Product do

  let(:product) {
    product_category = Category.create!(product_category: "Paintings", description: "A selection of locally sourced paintings", image_url: "products/p1.jpg")
    Product.create!(name: "Product1", description: "This is the first system generated product", image_url: "products/s2.jpg", category_id: product_category.id )
  }

  let(:user) {User.create!(email: "test@test.com", password: "test123")}
  before do
    product.comments.create!(rating: 1, user: user, body: "Awfull Painting")
    product.comments.create!(rating: 3, user: user, body: "OK Painting")
    product.comments.create!(rating: 5, user: user, body: "Greate Painting")
  end

  it "returns the average rating off all comments" do
    expect(product.average_rating).to eq 3
  end

  it "is not valid without a name" do
    expect(Product.new(description: "Cool painting")).not_to be_valid
  end
end
