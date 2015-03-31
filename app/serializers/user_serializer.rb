class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :provider, :uid

  has_one :spotify_profile
end
