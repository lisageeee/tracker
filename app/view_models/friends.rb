class Friends
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def count
    user.friends.count
  end
end
