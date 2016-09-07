class UsersController < ApplicationController

  expose(:user)

  def user_params
    params.require(:user).permit(:name, :email, :nickname, :first_name, :last_name, :location, :description, :password, :provider, :image, :token, :expires_at, :uid)
  end
end
