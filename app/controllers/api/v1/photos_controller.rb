class Api::V1::PhotosController < Api::ApiController

  def index
    raise_errors_if_empty_params :user_id 
    voted_ids = User.find(params[:user_id]).votes.pluck(:photo_id)
    photos = Photo.where("photos.id NOT in (?)", voted_ids).includes(:venue).limit(20).shuffle
    render json: photos
  end
end