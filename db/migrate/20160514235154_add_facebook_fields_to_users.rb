class AddFacebookFieldsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
    add_column :users, :token, :string
    add_column :users, :expires_at, :datetime
  end

  def down
    remove_column :users, :provider
    remove_column :users, :uid
    remove_column :users, :image
    remove_column :users, :token
    remove_column :users, :expires_at
  end
end
