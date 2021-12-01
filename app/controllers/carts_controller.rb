class CartsController < ApplicationController

  #before_action :authenticate_user, only: [:create, :destroy, :show]

def new
    @cart = Cart.new
    @find_user = current_user.email
    @user = User.find_by(email: @find)
    @item = Item.find_by(params[:id]) 
end



def create
  #@order = current_order
  @order_item = @order.order_items.new(order_params)
  @order.save
  #session[:order_id] = @order.id
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



  

   def order_params
       params.require(:order_item).permit(:product_id, :quantity)
   end
end