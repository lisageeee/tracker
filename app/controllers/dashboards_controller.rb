class DashboardsController < ApplicationController
  include SessionsHelper

  def index
    @dashboards = Dashboard.all
  end

  def new
    @dashboard = Dashboard.new(params[:dashboard])
  end

  def show
    @dashboard = Dashboard.find(params[:id])
  end

  def create
    params.permit!
    @trip = Trip.new(params[:trip])
    current_user.trips.push(@trip)

    redirect_to '/dashboard'
  end

  def user
    @user = current_user
    @trips = current_user.trips.paginate(page: params[:page])
  end
end
