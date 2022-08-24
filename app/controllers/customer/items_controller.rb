class Customer::ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @tax = 1.08
    @item_count = Item.where(is_active: true).count
  end
  
  def show
    @item = Item.find(params[:id])
    @tax = 1.08
    @cart_item = CartItem.new
  end
  
end
