class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :app_settings

  # ------------------------------------------------------------
  private
  # アプリ共通のシステム設定Hashを返す.
  # @note このHashはconfig/system.ymlファイルから読み込んだものであり、コードで直接書き換えないこと
  # @return [Hash] アプリ共通のシステム設定Hash(KeyにはStringを指定)
  # @example
  #   app_settings["sample"]["url"]
  #     => "http://127.0.0.1:8080/sample"
  def app_settings
    JrubyDeAdmin::Application.config.app_settings
  end
end
