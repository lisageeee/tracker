class TripsController < ApplicationController
  include SessionsHelper

  def new
    @trip = Trip.new(params[:trip])
  end

  def index
    @trips = Trip.all
  end

  def show
    params.permit!
    @user = current_user
    @trips = current_user.trips.paginate(page: params[:page])
  end
end
