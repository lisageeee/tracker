class Trip < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
 # validates :city
  #validates :country

  #not validating in and out.  Sometimes people know where they are going, but not when
end
