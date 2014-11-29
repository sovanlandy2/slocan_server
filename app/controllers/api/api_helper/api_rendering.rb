module Api::ApiHelper::ApiRendering
  extend ActiveSupport::Concern
  module ClassMethods
    
  end

  def render_errors status_code, error_message, http_code = 400, error_data = {}, extra_data = {}
    error = { message: error_message }
    if params[:dev].present?
      params.each{ |k, v| params[k] = "(binary)" unless v.is_a? String }
      error[:params] = params.to_hash.merge({path: request.url}) 
    end
    error.merge!(error_data) if error_data.present?
    render json: {status_code: status_code, error: error, accessing_time: Time.now.to_i}.merge(extra_data), status: http_code
  end

  def render_success message = "success", extra_data = {}
    render json: {status_code: 0, status: message, accessing_time: Time.now.to_i}.merge(extra_data)
  end

  def unauthorized
    render json: {errors: params[:errors]}
  end

end