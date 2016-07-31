class AddActivityToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :activity, :string
  end
end
