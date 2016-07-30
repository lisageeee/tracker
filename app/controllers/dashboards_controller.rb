class DashboardsController < ApplicationController
  include SessionsHelper
  expose(:dashboard)

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
