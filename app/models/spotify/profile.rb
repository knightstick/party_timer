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
  end
end
