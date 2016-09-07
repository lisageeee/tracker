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

  def nickname
    user.nickname
  end

  def first_name
    user.first_name
  end

  def last_name
    user.last_name
  end

  def location
    user.location
  end

  def description
    user.description
  end

  def trips
    user.trips
  end

  def image_size
    if user.provider == "facebook"
      "?type=large"
    else
      ""
    end
  end
end
