class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    response = auth_response_hash
    uid = response.delete(:uid)
    if User.find_by(uid: uid)
      # log that user in
    else
      # create user and spotify profile
      Spotify::Profile.create(response)
    end
    # sign user in
    render json: 'Success'
  end

  def auth_response_hash
    {
      uid: omni_auth_json[:uid],
      name: omni_auth_json[:info][:name],
      image_url: omni_auth_json[:info][:image],
      token: omni_auth_json[:credentials][:token],
      refresh_token: omni_auth_json[:credentials][:refresh_token],
      expires_at: omni_auth_json[:credentials][:expires_at]
    }
  end

  def omni_auth_json
    JSON.parse(request.env['omniauth.auth']).with_indifferent_access
  end
end
