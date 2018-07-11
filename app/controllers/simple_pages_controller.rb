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
    ActionMailer::Base.mail(from: @email,
      to: "chrisw@webe-solutions.com",
      subject: "A new contact message from #{@name}",
      body: @message).deliver_now
  end
end
