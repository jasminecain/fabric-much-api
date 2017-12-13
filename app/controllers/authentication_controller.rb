class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  # def authenticate
  #   command = AuthenticateUser.call(params[:email], params[:password])

  #   if command.success?
  #     binding.pry
  #     render json: { auth_token: command.result[:token], user_id: command.result[:user_id] }
  #   else
  #     render json: { error: command.errors }, status: :unauthorized
  #   end
  # end

  def create
    binding.pry
    # initialize and execute the command
    # NOTE: `.call` is a shortcut for `.new(args).call)`
    command = AuthenticateUser.call(params[:email], params[:password])

    # check command outcome
    if command.success?
      binding.pry
      # command#result will contain the user instance, if found
      # session[:user_token] = command.result
      render json: { auth_token: command.result }
    else
      # flash.now[:alert] = t(command.errors[:authentication])
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private

  def sessions_params
    params.require(:session).permit(:email, :password)
  end
end
