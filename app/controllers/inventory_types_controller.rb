class InventoryTypesController < ApplicationController

  def index
    @inventory_types = InventoryType.all
    render json: @inventory_types
  end

  def show
    # @render json: @inventory_types
  end
end
