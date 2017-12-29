class AuthenticationController < ApplicationController
  # skip_before_action :authenticate_request

  def create
    # initialize and execute the command
    # NOTE: `.call` is a shortcut for `.new(args).call)`
    command = AuthenticateUser.call(params[:email], params[:password])

    # check command outcome
    if command.success?
      user = User.find_by_email(params[:email])
      user.update_attributes(:authentication_token => command.result)
      # command#result will contain the user instance, if found
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  def destroy
    if headers['Authorization'].present?
      user = User.find_by(:authentication_token)
      render json: { auth_token: command.errors }, status: :destroy
    else
      render json: { error: command.erros }, status: :authorized
    end

    # if header authorization is present
    # find user by authentication token
    # delete auth token from user record
    # save if successful return 200
    # delete token in local storage ANGJS redirect to log in



  end

  private

  def sessions_params
    params.require(:session).permit(:email, :password)
  end
end
