class UsersController < ApplicationController
  # skip_before_action :authenticate_user, only: [:create]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    @fabrics = @user.fabrics
    render json: {fabrics: @fabrics}
  end

  def new
    user = User.new
  end

  # POST /users
  def create
    # create user
    @user = User.create(user_params)

    if @user.save
      # authenticate user with user_params & store token in token variable
      token = AuthenticateUser.call(user_params[:email], user_params[:password]).result
      # update user authentication_token attribute with new token
      @user.update_attributes(:authentication_token => token)
      # don't need pw digest in response
      @user[:password_digest] = nil
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy(user_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
