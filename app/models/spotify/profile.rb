# == Schema Information
#
# Table name: spotify_profiles
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  uid           :string
#  name          :string
#  image         :string
#  token         :string
#  refresh_token :string
#  expires_at    :string
#

module Spotify
  class Profile < ActiveRecord::Base
    belongs_to :user

    def self.from_omniauth(auth, user)
      profile = user.spotify_profile || Spotify::Profile.new(user_id: user.id)
      profile.update_attributes(
        uid: auth.uid,
        name: auth.info.name,
        image: auth.info.image,
        token: auth.credentials.token,
        refresh_token: auth.credentials.refresh_token,
        expires_at: auth.credentials.expires_at
      )
      profile
    end
  end
end
