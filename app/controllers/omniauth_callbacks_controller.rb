class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    render json: request.env['omniauth.auth']
    # find a user with spotify id coming in
    # if it exists log that user in
    # if not, create that user
    # grab interesting things and create new model object
    # then sign that guy in
  end
end
