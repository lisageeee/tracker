class User < ActiveRecord::Base
  has_many :trips, dependent: :destroy

  def self.omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.token = auth.credentials.token
      # Twitter doesn't return expires_at, so we need to try and then handle gracefully
      user.expires_at = auth['credentials'].try(:[],'expires_at') ? Time.at(auth['credentials'].try(:[],'expires_at')) : nil
      user.save!
    end
  end
end
