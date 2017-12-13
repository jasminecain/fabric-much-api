class ApplicationController < ActionController::API
  include Knock::Authenticable
  # before_action :authenticate_request
  # attr_reader :current_user

  # private

  # def authenticate_request
  #   @current_user = AuthorizeApiRequest.call(request.headers).result
  #   render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  # end
  private

  def authenticate_v1_user
    authenticate_for V1::User
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
