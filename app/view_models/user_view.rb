class UserView
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def image
    user.image
  end

  def name
    user.name
  end

  def trips
    user.trips
  end

  def image_size
    "?type=large"
  end
end
