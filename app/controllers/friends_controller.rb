class FriendsController < ApplicationController
  expose(:friends) { Friends.new(current_user) }
end
