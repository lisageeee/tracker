class AddActivityDateToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :activity_date, :datetime
  end
end
