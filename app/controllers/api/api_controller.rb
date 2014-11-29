class Api::ApiController < ApplicationController
  protect_from_forgery with: :null_session
  
  include Api::ApiHelper::CheckError
  include Api::ApiHelper::ApiRendering
  include Api::ApiHelper::ActiveRecordHelper

  #helper_method :current_resource_owner
  DEFAULT_PER_PAGE = 20

  respond_to :json

  def default_serializer_options
    {root: false}
  end
  
  private
  def page_param
    params[:page].present?? params[:page].to_i : 1
  end

  def per_page_param
    DEFAULT_PER_PAGE
  end
end