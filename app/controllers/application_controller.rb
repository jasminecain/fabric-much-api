class ApplicationController < ActionController::API
  # before_action :authenticate_request
  before_action :authenticate_user
  attr_reader :current_user

  private

  def unauthorized
    render json: { error: 'User not authenticated.' }, status: :unauthorized
  end

  # def authenticate_request
  #   binding.pry
  #   @current_user = AuthorizeApiRequest.call(request.headers).result
  #   render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  # end

  def authenticate_user
    # binding.pry
    token = request.headers['Authentication-Token']
    return unauthorized unless User.exists?(authentication_token: token)
  end
end
