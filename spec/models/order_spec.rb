require 'rails_helper'

describe Order do

  let(:product) {
    product_category = Category.create!(
      product_category: "Test Order Category",
      description: "A category for testing orders",
      image_url: "products/p1.jpg"
    )
    Product.create!(
      name: "Test product orders",
      description: "This is a test product",
      image_url: "products/s2.jpg",
      category_id: product_category.id
    )
  }

  let(:user) {
    User.create!(email: "test@test.com", password: "test123")
  }

  it "is a valid order" do
    expect(Order.new(
      user: user,
      product: product,
      total: 100
      )
    ).to be_valid
  end

  it "is not valid without a user" do
    expect(Order.new(
      product: product,
      total: 100
      )
    ).not_to be_valid
  end

  it "is not valid without product" do
    expect(Order.new(
      user: user,
      total: 100
      )
    ).not_to be_valid
  end
end
