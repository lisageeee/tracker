class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.text :city
      t.text :country
      t.datetime :in
      t.datetime :out
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :trips, [:user_id, :created_at]
  end
end
