class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :app_settings
  
  # ------------------------------------------------------------
  private
  # アプリ共通のシステム設定Hashを返す.
  def app_settings
    JrubyDeAdmin::Application.config.app_settings
  end
end
