class Users::SessionsController < Devise::SessionsController
  # GET /resource/sign_in
  layout 'sign_in'
  def new
    super
  end
end