class SecuredController < ApplicationController
  before_action :authenticate_v1_user

  def index
    if current_user
      # do something
    else
      # do something else
    end

end
