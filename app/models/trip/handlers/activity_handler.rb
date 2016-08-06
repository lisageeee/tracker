module Trips
  module Handlers
    class ActivityHandler

      def initialize(trip)
        @trip = trip
      end

      def update(user_activity)
        trip.update_attribute(:activity, user_activity)
      end

    end
  end
end
