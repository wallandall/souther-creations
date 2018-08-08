require 'rails_helper'

describe Category do
  let(:category) {
    Category.create!(product_category: "Sculptures", description: "Stone sculpture", image_url: "products/p1.jpg")
  }
  it "is valid" do
    expect(category.description).to eq("Stone sculpture")
  end
end
