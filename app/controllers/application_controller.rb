class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def page_param
    params[:page].present?? params[:page].to_i : 1
  end

  def per_page_param
    DEFAULT_PER_PAGE
  end
end
