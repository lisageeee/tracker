class DashboardView
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def trip_count
    user.trips.count
  end

end
