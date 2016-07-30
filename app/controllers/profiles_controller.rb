class ProfilesController < ApplicationController
  include SessionsHelper
  expose(:profile)

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
