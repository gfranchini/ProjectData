class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :danger, :info, :warning, :success

  private

  def after_sign_out_path_for(current_user)
    root_path
  end
end
