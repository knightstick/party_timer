class CreateSpotifyProfiles < ActiveRecord::Migration
  def change
    create_table :spotify_profiles do |t|

      t.timestamps null: false
    end
  end
end
