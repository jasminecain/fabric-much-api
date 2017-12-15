class InventoryTypesController < ApplicationController

  def index
    @types = InventoryType.all
    render json: @types
  end
end
