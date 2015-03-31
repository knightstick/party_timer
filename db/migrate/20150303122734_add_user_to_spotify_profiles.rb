class AddUserToSpotifyProfiles < ActiveRecord::Migration
  def change
    add_reference :spotify_profiles, :user, index: true
    add_foreign_key :spotify_profiles, :users
  end
end
