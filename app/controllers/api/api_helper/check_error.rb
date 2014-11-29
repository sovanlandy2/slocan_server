module Api::ApiHelper::CheckError
  extend ActiveSupport::Concern
  module ClassMethods
    
  end

  def raise_errors_if_empty_params *param_list
    param_list = [param_list] unless param_list.is_a? Array
    missing_list = param_list.select{ |p| !params[p.to_sym].present? }
    render_errors(Api::Status::PARAMS_MISSING, "Parameters are missing", 400, {missing_parameters: missing_list}) and  raise Injection::Error::DefinedError::ExpectedErrorAndDoNothing if missing_list.size > 0
  end

  def raise_errors_if_all_empty *param_list
    param_list = [param_list] unless param_list.is_a? Array
    missing_list = param_list.select{ |p| !params[p.to_sym].present? }
    render_errors(Api::Status::PARAMS_MISSING, "At least one parameter must be present", 400, {missing_parameters: missing_list}) and  raise Injection::Error::DefinedError::ExpectedErrorAndDoNothing if missing_list.size == param_list.size
  end

  def raise_errors_if_params_value_not_included hash
    error_hash = {}
    hash.each do |k,v|
      v_strings = v.map(&:to_s)
      error_hash[k.to_s] = v_strings unless v_strings.include?(params[k])
    end
    render_errors(Api::Status::PARAMS_MISSING, "Params are not included", 400, {wrong_parameters: error_hash }) and  raise Injection::Error::DefinedError::ExpectedErrorAndDoNothing unless error_hash.empty?
  end

  def raise_errors_unless_params_uploaded_files *param_list
    param_list = [param_list] unless param_list.is_a? Array
    invalid_params = param_list.select{ |el| params[el].present? && !params[el].is_a?(ActionDispatch::Http::UploadedFile) }
    render_errors(Api::Status::PARAMS_INVALID_TYPE, "Invalid type (required as binary)", 400, {invalid_params: invalid_params}) and  raise Injection::Error::DefinedError::ExpectedErrorAndDoNothing if invalid_params.size > 0
  end  

  included do
    rescue_from Injection::Error::DefinedError::TemporalCheating do
      render_errors Api::Status::AUTH_INVALID_TIME_RANGE, "You are cheating with time now!!!"
    end

    rescue_from Injection::Error::DefinedError::UnauthorizedError do
      render_errors Api::Status::AUTH_INVALID, "Invalid id or token hash"
    end

    rescue_from Injection::Error::DefinedError::RecordNotFoundError do |e|
      message = e.message.blank? ? "Record doesn't exist" : e.message
      render_errors Api::Status::ENTITY_NOT_FOUND, message
    end

    rescue_from RangeError do
      render_errors Api::Status::PARAMS_INVALID_VALUE_RANGE, "Invalid value range"
    end

    rescue_from ActiveRecord::RecordNotUnique do
      render_errors Api::Status::ENTITY_DUPLICATE, "Entity Duplication detected"
    end

    rescue_from Injection::Error::DefinedError::ExpectedErrorAndDoNothing do
     
    end
  end

end
