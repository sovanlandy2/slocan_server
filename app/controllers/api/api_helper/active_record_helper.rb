module Api::ApiHelper::ActiveRecordHelper
  extend ActiveSupport::Concern
  module ClassMethods
    
  end
  def get_api_entity entity, klass = nil
    message = klass.nil? ? "" : "#{klass.to_s} record is not found!"
    raise Injection::Error::DefinedError::RecordNotFoundError, message if entity.nil?
    entity
  end
  
  def get_api_entity_auto_id klass
    get_api_entity(klass.find_by_id(params[:id]), klass)
  end

end