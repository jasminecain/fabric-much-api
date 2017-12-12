module Api
  class ApiController < ActionController::Base
    before_action :authenticate_user

    respond_to :json

    private

    def record_not_found exception
      render json: { error: exception }, status: :not_found
    end

    def record_invalid
      render json: { error: exception.record.errors }, status: :not_found
    end

    # if request cannot be processed, fails with a 400 error
    def bad_request object = nil
      if object
        render json: { error: 'bad request', message: object.errors.full_message.join(',') }, status: :bad_request
      else
        render json: { error: 'bad request' }, status: :bad_request
      end
    end

    def forbidden
      render json: { error: 'User does not have permission' }, status: :forbidden
    end

    def unauthorized
      render json: { error: 'User not authenticated.' }, status: :unauthorized
    end

    def current_user
      token = request.headers['Authentication-Token']
      @current_user ||= User.find_by(authentication_token: token)
    end

    def authenticate_user
      token = request.headers['Authentication-Token']
      return unauthorized unless User.exists?(authenticate_token: token)
    end

  end
end
