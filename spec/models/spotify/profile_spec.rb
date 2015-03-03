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

require 'rails_helper'

RSpec.describe Spotify::Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
