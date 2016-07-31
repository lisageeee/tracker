class ProfilesController < ApplicationController
  include SessionsHelper

  expose(:profile)
  expose(:user_view) { UserView.new(current_user) }
  expose(:buttons)   { Buttons.new }
  expose(:labels)    { Labels.new }
  expose(:activity)  { Activity.new }

  def create
    params.permit!
    @profile = Profile.new(params[:trip])
    current_user.update_attribute(:profile, @profile)

    redirect_to '/profile'
  end

  def user
    @user = current_user
    @trips = current_user.trips.paginate(page: params[:page])
  end

end
