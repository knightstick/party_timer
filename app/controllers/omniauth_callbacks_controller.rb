class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    # # response = auth_response_hash
    @user = User.from_omniauth(request.env['omniauth.auth'])
    @user.spotify_profile = Spotify::Profile.from_omniauth(request.env['omniauth.auth'], @user)

    if @user.persisted?
      sign_in @user, event: :authentication
      render json: @user
    else
      redirect_to new_user_session_path
    end
  end
end
