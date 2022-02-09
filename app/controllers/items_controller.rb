class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items 
  # GET /items?sort_by=price or /items?sort_by=model
  def index
    @items = Item.all
    update_items(@items)

    if (params[:sort_by] == "model")
      @items = Item.order(:model)
    elsif(params[:sort_by] == "price")
      @items = Item.order(:price)
    end

    render json: JSON.pretty_generate(@items.as_json(except: [:created_at, :updated_at]))

  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  private

  def update_items(items)
    items.each do |i|
      i.update(price: ActionController::Base.helpers.number_to_currency(i.price, unit: "EUR", format: "%n %u"))
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:id, :make, :model, :price, :photo)
  end
end
