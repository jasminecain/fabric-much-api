class FabricsController < ApplicationController
  # before_action :set_fabric, only: [:show, :update, :destroy]

  # GET /fabrics
  def index
    @fabrics = Fabric.all

    render json: @fabrics.to_json(:include => :fabric_type)
  end

  # GET /fabrics/1
  def show
    @fabric = Fabric.find(params[:id])
    render json: @fabric.to_json(:include => :fabric_type)
  end

  # POST /fabrics
  def create
    @fabric = Fabric.new(fabric_params)
    # @fabric.user_id = 1
    # inventory_type = InventoryType.find(fabric_params[:inventory_type_id])
    # @fabric.inventory_type << inventory_type

    if @fabric.save
      render json: @fabric, status: :created, location: @fabric
    else
      render json: @fabric.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fabrics/1
  def update
    @fabric = Fabric.find(params[:id])
      # @fabric = Fabric.find(session[:user_id])
      if @fabric.update_attributes(fabric_params)
        render json: @fabric
      else
        render json: @fabric.errors, status: :unprocessable_entity
      end
  end

  # DELETE /fabrics/1
  def destroy
    @fabric = Fabric.find(params[:id])
    # @fabric = Fabric.find(session[:user_id])
    #   if @user.id == @fabric.user_id
    #   end
    if @fabric.destroy
      successful_request
    else
      bad_request(@fabric)
    end
  end

  # Stores json list
  def stores
    render json: Fabric::STORES
  end

  # Categories json list
  def fabric_types
    render json: Fabric::FABRIC_TYPES
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_fabric
      # @fabric = Fabric.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def fabric_params
      params.require(:fabric).permit(:user_id, :fabric_type_id, :fabric_name, :barcode, :price, :quantity, :store, :inventory_type_id, :fabric_image)
    end
end
