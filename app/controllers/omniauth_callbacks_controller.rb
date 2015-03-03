class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    Spotify::Profile.create(auth_response_hash)
    render json: 'Success'
    # find a user with spotify id coming in
    # if it exists log that user in
    # if not, create that user
    # grab interesting things and create new model object
    # then sign that guy in
  end

  private

  def auth_response_hash
    json = JSON.parse(request.env['omniauth.auth']).with_indifferent_access
    {
      uid: json[:uid],
      name: json[:info][:name],
      image_url: json[:info][:image],
      token: json[:credentials][:token],
      refresh_token: json[:credentials][:refresh_token],
      expires_at: json[:credentials][:expires_at]
    }
  end
end
