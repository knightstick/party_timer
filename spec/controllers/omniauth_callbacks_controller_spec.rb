require 'rails_helper'
require 'spotify_spec_helper'

RSpec.describe OmniauthCallbacksController, type: :controller do


  describe 'GET spotify' do
    before :each do
      @request.env['devise.mapping'] = Devise.mappings[:user]
    end

    def expected_attributes
      {
        uid: '1129481062',
        name: 'Chris Jewell',
        image_url: 'https://example.com/avatar.jpg',
        token: 'faketoken',
        refresh_token: 'fakerefresh',
        expires_at: 1425379690
      }
    end

    it 'creates a spotify profile with expected attributes' do
      request.env['omniauth.auth'] = sample_response_string
      expect(Spotify::Profile).to receive(:create)
        .with(expected_attributes).once
      get :spotify
    end

    let(:existing_user) { FactoryGirl.create(:user_with_spotify_profile) }

    it 'should not create a new user if a user exists with that uid' do
      request.env['omniuauth.auth'] = "{'uid':'#{existing_user.spotify_profile.uid}''}"
      expect(Spotify::Profile).not_to receive(:create)
    end
  end
end
