class FabricTypesController < ApplicationController
  before_action :set_fabric_type, only: [:show, :update, :destroy]

  # GET /fabric_types
  def index
    @fabric_types = FabricType.all

    render json: @fabric_types
  end

  # GET /fabric_types/1
  def show
    render json: @fabric_type
  end

  # POST /fabric_types
  def create
    @fabric_type = FabricType.new(fabric_type_params)

    if @fabric_type.save
      render json: @fabric_type, status: :created, location: @fabric_type
    else
      render json: @fabric_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fabric_types/1
  def update
    if @fabric_type.update(fabric_type_params)
      render json: @fabric_type
    else
      render json: @fabric_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fabric_types/1
  def destroy
    @fabric_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabric_type
      @fabric_type = FabricType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fabric_type_params
      params.require(:fabric_type).permit(:category)
    end
end
