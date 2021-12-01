class ItemsController < ApplicationController
  
 
  
  def index
    @items = Item.all
    @cart = Cart.first
    puts @cart
  end

  def show
    @item = Item.find(params[:id])
    @cart = Cart.first
    puts @cart
  end


  def create
    @item = Item.create(
      title: Faker::Creature::Cat.name,
      description: Faker::Lorem.sentences(number: 5),
      price: Faker::Number.number(digits: 3)
    )
  end

  def destroy
    #@item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to cart_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def items_params
    params.permit(:title, :description, :price)
  end
end
