class ItemsController < ApplicationController
  
 
  
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(
      title: Faker::Creature::Cat.name,
      description: Faker::Lorem.sentences(number: 5),
      price: Faker::Number.number(digits: 3)
    )
    
  end

  private

  def items_params
    params.permit(:title, :description, :price)
  end
end
