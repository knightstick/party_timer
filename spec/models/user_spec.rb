# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#  provider               :string
#  uid                    :string
#

require 'rails_helper'
require 'spotify_spec_helper'

RSpec.describe User, type: :model do

  describe 'Spotify callbacks' do

    it 'creates a user from spotify' do
      User.from_omniauth(sample_response_string)

      expect(User.count).to eq 1
    end
  end
end
