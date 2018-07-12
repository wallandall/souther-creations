class SimplePagesController < ApplicationController
  def index
    @categories = Category.order(:sort).all
  end

  def landing_page
     @featured_product = Product.first
     @products = Product.limit(3)
  end

  def about
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
