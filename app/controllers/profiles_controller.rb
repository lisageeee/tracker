class ProfilesController < ApplicationController
  include SessionsHelper

  def new
    @profile = Profile.new(params[:profile])
  end

  def show
    @profile = Profile.find(params[:id])
  end

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
