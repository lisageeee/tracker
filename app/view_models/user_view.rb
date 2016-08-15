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
    # adding an image size to the Twitter profile link breaks it; if setting a size is necessary, perhaps create a class and apply it to this image tag?
    "?type=large"
  end
end
