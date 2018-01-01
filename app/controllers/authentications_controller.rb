class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user

  def create
    # initialize and execute the command
    # NOTE: `.call` is a shortcut for `.new(args).call)`
    command = AuthenticateUser.call(params[:email], params[:password])

    # check command outcome
    if command.success?
      user = User.find_by_email(params[:email])
      user.update_attributes(:authentication_token => command.result)
      # return the user record with auth token
      render json: user
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  def destroy
    if request.headers['Authentication-Token']
      user = User.find_by(:authentication_token => request.headers['Authentication-Token'])
      user.update_attributes(:authentication_token => nil)
      render json: { status: 200 }
    else
      render json: { head: 204 }
    end
  end

  private

  def sessions_params
    params.require(:session).permit(:email, :password)
  end
end
