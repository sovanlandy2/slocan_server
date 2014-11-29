class Api::V1::PhotosController < Api::ApiController

  def index
    raise_errors_if_empty_params :user_id 
    photos = Photo.page(page_param)
    respond_with photos, serializer: PaginationSerializer
  end
end