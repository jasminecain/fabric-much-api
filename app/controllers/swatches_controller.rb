class SwatchesController < ApplicationController
  before_action :set_swatch, only: [:show, :update, :destroy]

  # GET /swatches
  def index
    @swatches = Swatch.all

    render json: @swatches
  end

  # GET /swatches/1
  def show
    render json: @swatch
  end

  # POST /swatches
  def create
    @swatch = Swatch.new(swatch_params)

    if @swatch.save
      render json: @swatch, status: :created, location: @swatch
    else
      render json: @swatch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /swatches/1
  def update
    if @swatch.update(swatch_params)
      render json: @swatch
    else
      render json: @swatch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /swatches/1
  def destroy
    @swatch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swatch
      @swatch = Swatch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def swatch_params
      params.require(:swatch).permit(:bolt_id, :fabric_id, :user_id)
    end
end
