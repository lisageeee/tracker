class TripsController < ApplicationController
  def new
    @trip = Trip.new(params[:trip])
  end

  def index
    @trips = Trip.all
  end
end
