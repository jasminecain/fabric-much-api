class FabricsController < ApplicationController
  # before_action :set_fabric, only: [:show, :update, :destroy]

  # GET /fabrics
  def index
    @fabrics = Fabric.all

    render json: @fabrics
  end

  # GET /fabrics/1
  def show
    @fabric = Fabric.find(params[:id])
    render json: @fabric
  end

  # POST /fabrics
  def create
    @fabric = Fabric.new(fabric_params)

    if @fabric.save
      render json: @fabric, status: :created, location: @fabric
    else
      render json: @fabric.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fabrics/1
  def update
    if @fabric.update(fabric_params)
      render json: @fabric
    else
      render json: @fabric.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fabrics/1
  def destroy
    @fabric.destroy
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
      params.require(:fabric).permit(:user_id, :bolt_id, :fabric_type_id, :fabric_name, :barcode, :price, :quantity, :store)
    end
end
