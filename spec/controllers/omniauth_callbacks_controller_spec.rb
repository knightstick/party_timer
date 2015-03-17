require 'rails_helper'
require 'spotify_spec_helper'

RSpec.describe OmniauthCallbacksController, type: :controller do
  describe 'GET spotify' do
    before :each do
      @request.env['devise.mapping'] = Devise.mappings[:user]
    #   request.env['omniauth.auth'] = sample_response_string
    end

    def expected_attributes
      {
        name: 'Chris Jewell',
        image_url: 'https://example.com/avatar.jpg',
        token: 'faketoken',
        refresh_token: 'fakerefresh',
        expires_at: 1425379690
      }
    end

    it 'creates a spotify profile with expected attributes' do
      VCR.use_cassette(:spotify_login, record: :new_episodes) do
        get :spotify
        puts body = JSON.parse(response.body)
        expect(response.status).to eq 200
      end
      # expect(Spotify::Profile).to receive(:create)
      #   .with(expected_attributes).once
      # get :spotify
    end

    let(:existing_user) { FactoryGirl.create(:user_with_spotify_profile) }

    it 'should not create a new user if a user exists with that uid' do
      expect_any_instance_of(OmniauthCallbacksController)
        .to receive(:auth_response_hash).and_return(uid: existing_user.uid)
      expect(Spotify::Profile).not_to receive(:create)
      get :spotify
    end
  end
end
