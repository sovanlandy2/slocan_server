class Api::V1::PhotosController < Api::ApiController

  def index
    raise_errors_if_empty_params :user_id 
    voted_ids = User.find(params[:user_id]).votes.pluck(:photo_id)
    if voted_ids.present?
      photos = Photo.where("photos.id NOT in (?)", voted_ids).includes(:venue).limit(20).shuffle
    else
      photos = Photo.includes(:venue).limit(20).shuffle
    end
    render json: photos
  end

end