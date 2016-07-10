class BaseController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def setup_user
    params.permit!
    @trip = Trip.new(params[:trip])
    current_user.trips.push(@trip)
  end
end
