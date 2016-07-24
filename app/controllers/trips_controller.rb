class TripsController < ApplicationController
  include SessionsHelper
  expose(:trip)

  def show
    params.permit!
    @user = current_user
    @trips = current_user.trips.paginate(page: params[:page])
  end
end
