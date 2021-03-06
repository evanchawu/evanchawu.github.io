class ApplicationController < ActionController::Base
  # before_action :authenticate
  before_action :ensure_signup_complete, only: [:new, :create, :update, :destroy]
  protect_from_forgery with: :exception
  require 'digest'

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      md5_of_password = Digest::MD5.hexdigest(password)
      username == 'admin' && md5_of_password == '7df27de84ed79a46d75c7c57ad00f76f'
    end
  end

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end
end
