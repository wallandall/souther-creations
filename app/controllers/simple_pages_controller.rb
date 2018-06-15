class SimplePagesController < ApplicationController
  def index
    @categories = Category.order(:sort).all
    @featured_product = Product.first
  end

  def about
  end

  def contact
  end
end
