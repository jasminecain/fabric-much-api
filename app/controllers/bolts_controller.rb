class BoltsController < ApplicationController
  before_action :set_bolt, only: [:show, :update, :destroy]

  # GET /bolts
  def index
    @bolts = Bolt.all

    render json: @bolts
  end

  # GET /bolts/1
  def show
    render json: @bolt
  end

  # POST /bolts
  def create
    @bolt = Bolt.new(bolt_params)

    if @bolt.save
      render json: @bolt, status: :created, location: @bolt
    else
      render json: @bolt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bolts/1
  def update
    if @bolt.update(bolt_params)
      render json: @bolt
    else
      render json: @bolt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bolts/1
  def destroy
    @bolt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolt
      @bolt = Bolt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bolt_params
      params.require(:bolt).permit(:user_id, :fabric_type_id, :fabric_name, :barcode, :price, :quantity, :store)
    end
end
