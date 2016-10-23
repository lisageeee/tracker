class User < ActiveRecord::Base
  has_many :trips, dependent: :destroy

  def self.omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.nickname = auth.info.nickname
      
      fname = auth.info.first_name
      fname = "" if fname.blank?
      user.first_name = fname

      lname = auth.info.last_name
      lname = "" if lname.blank?
      user.last_name = lname

      location = auth.info.location
      location = "" if location.blank?
      user.location = location      

      description = auth.info.description
      description = "" if description.blank?
      user.description = description  

      user.image = auth.info.image
      user.token = auth.credentials.token
      user.expires_at = auth.check_for_expires_at_returned()
      user.save!
    end
  end
  
  private
  
  def check_for_expires_at_returned()
    if (auth.credentials.expires_at)
      Time.at(auth.credentials.expires_at)
    else
      nil
    end
  end
  
end
