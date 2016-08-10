class DashboardsController < ApplicationController
  include SessionsHelper

  expose(:dashboard) { DashboardView.new(current_user) }
  expose(:buttons)   { Buttons.new }
  expose(:labels)    { Labels.new }
  expose(:friends) { Friends.new(current_user) }
  expose(:user_view) { UserView.new(current_user) }

  def create
    params.permit!
    @trip = Trip.new(params[:trip])
    #prob want to update attributes instead
    current_user.trips.push(@trip)

    redirect_to '/dashboard'
  end

  def user
    @user = current_user
    @trips = current_user.trips.paginate(page: params[:page])
  end
end
