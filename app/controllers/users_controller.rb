class UsersController < ApplicationController
  def new
    @user = User.new(params[:user])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :provider, :image, :token, :expires_at, :uid)
  end
end
