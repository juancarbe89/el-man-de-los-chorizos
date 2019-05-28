class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :set_locale

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" } ### Change
  end

  private

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
    # Rails.application.routes.default_url_options[:locale] = I18n.locale
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end
end
