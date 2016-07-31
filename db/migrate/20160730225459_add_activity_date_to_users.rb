class AddActivityDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :activity_date, :datetime
  end
end
