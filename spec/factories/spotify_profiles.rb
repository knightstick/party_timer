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

FactoryGirl.define do
  factory :spotify_profile, class: 'Spotify::Profile' do
    uid '0123456789'
  end
end
