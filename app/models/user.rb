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

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # TODO: Decide which of these we need
  devise :database_authenticatable,
  :recoverable, :rememberable, :trackable,
  :omniauthable, omniauth_providers: [:spotify]

  has_one :spotify_profile, dependent: :destroy, class_name: 'Spotify::Profile'

  def self.from_omniauth(auth)
    user = User.find_or_initialize_by(uid: auth.id)
    user.update_attributes(
      email: auth.info.email,
      password: Devise.friendly_token[0, 20],
      provider: 'spotify'
    )
    user
  end

  def password_required?
    false
  end
end
