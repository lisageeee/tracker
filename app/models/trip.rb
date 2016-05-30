class Trip < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
