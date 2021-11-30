class CartsController < ApplicationController

  #before_action :authenticate_user, only: [:create, :destroy, :show]

def new
    @cart = Cart.new
    @find_user = current_user.email
    @user = User.find_by(email: @find)
    @item = Item.find_by(params[:id]) 
end

def create

  @cart = Cart.new
    @find_user = current_user.email
    @user = User.find_by(email: @find)
    @item = Item.find_by(params[:id]) 

  item = Item.find(params[:item_id])
  @cart.add_item(item.id)
  session[:cart] = @cart.contents
  flash[:notice] = "You now have #{pluralize(@cart.count_of(item.id), item.title)}."
  redirect_back(fallback_location: root_path)
end

def index
  @carts = Cart.all
end


private

def total_price
@total_price = 0 
Cart.where(user: current_user).each do |cart|
total_price = total_price + cart.item.price 
end
return @total_price
end
end