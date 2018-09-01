class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:new, :edit, :update, :destroy] do
    redirect_to products_path, notice: 'You need to be an Admin to perform this action!' unless current_user && current_user.admin
  end
  
  def index
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
