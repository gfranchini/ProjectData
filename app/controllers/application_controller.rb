class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  add_flash_types :danger, :info, :warning, :success

  private

  def after_sign_out_path_for(current_user)
    root_path
  end
end
