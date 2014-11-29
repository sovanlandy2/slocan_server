class Api::V1::PhotosController < Api::ApiController

  def index
    raise_errors_if_empty_params :user_id 
    voted_ids = User.find(params[:user_id]).votes.pluck(:photo_id)
    photos = Photo.where("id NOT in (?)", voted_ids).order("rating desc").limit(20).shuffle
    render json: photos
  end
end