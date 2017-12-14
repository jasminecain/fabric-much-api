class AuthenticationController < ApplicationController
  # skip_before_action :authenticate_request

  def create
    # initialize and execute the command
    # NOTE: `.call` is a shortcut for `.new(args).call)`
    command = AuthenticateUser.call(params[:email], params[:password])

    # check command outcome
    if command.success?
      # command#result will contain the user instance, if found
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private

  def sessions_params
    params.require(:session).permit(:email, :password)
  end
end
