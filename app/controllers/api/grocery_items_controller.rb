class Api::GroceryItemsController < ApplicationController
  before_action :set_item, only: %i[show update destroy]

  def index
    @items = GroceryItem.all
    render json: @items
  end

  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def create
      @item = GroceryItem.create(item_params)
      if @item.save
        render json: @item
      else
        render json: { error: 'failed to create item' }, status: :unprocessable_entity
      end
    end

  def destroy
   @item.destroy
  end
 
  private

  def set_item
    @item = GroceryItem.find(params[:id])
  end

  def item_params
    params.require(:grocery_item).permit(:name, :category, :image, :user_id)
  end
end