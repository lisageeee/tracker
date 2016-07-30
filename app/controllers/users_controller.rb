class UsersController < ApplicationController

  expose(:user)

  def user_params
    params.require(:user).permit(:name, :email, :password, :provider, :image, :token, :expires_at, :uid)
  end
end
