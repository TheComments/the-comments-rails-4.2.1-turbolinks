class ApplicationController < ActionController::Base
  include ::TheCommentsBase::ViewToken

  def comments_cookies_token
    'DefineYourTheCommentsCookies'
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_locale

  private

  def set_locale
    locale = 'en'
    langs  = %w{ en ru }

    if params[:locale]
      lang   = params[:locale]
      locale = cookies[:locale] = lang if langs.include?(lang)
    else
      if cookies[:locale]
        lang = cookies[:locale]
        locale = lang if langs.include?(lang)
      end
    end

    I18n.locale = locale
  end
end
