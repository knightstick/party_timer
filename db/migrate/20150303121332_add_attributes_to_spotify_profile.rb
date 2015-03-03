class AddAttributesToSpotifyProfile < ActiveRecord::Migration
  def change
    change_table :spotify_profiles do |t| 
      t.string :uid
      t.string :name
      t.string :image
      t.string :token
      t.string :refresh_token
      t.string :expires_at
    end
  end
end
