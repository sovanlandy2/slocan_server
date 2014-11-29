class Api::V1::VotesController < Api::ApiController 

  def create
    raise_errors_if_empty_params :user_id, :photo_id, :liked
    user_id = params[:user_id]
    photo_id = params[:photo_id]
    vote = Vote.where(user_id: user_id, photo_id: photo_id).first_or_create do |vote|
      vote.liked = params[:liked]
    end
    render json: vote
  end
end