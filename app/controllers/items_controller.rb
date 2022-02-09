class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items or /items.json
  def index
    # raise(Item.order(:model).inspect())
    if (params[:sort_by] == "model")
      @items = Item.order(:model)
    end

    if(params[:sort_by] == "price")
      @items = Item.order(:price)
    end
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      raise(params.inspect())
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:id, :make, :model, :price, :photo)
    end
end
