class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  helper_method :switch_language_path, :current_path_new_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def current_path_new_locale(new_locale)
    locale = I18n.default_locale
    I18n.available_locales.each do |lan|
      if new_locale == lan
        locale = "/#{lan}"
      end
    end
    request.path.sub(/\/(#{I18n.available_locales.join('|')})/, locale)
  end

protect_from_forgery with: :exception

before_filter :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :time_zone, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :time_zone, :email, :password, :current_password])
  end

end
