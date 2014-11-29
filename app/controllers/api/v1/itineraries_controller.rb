class Api::V1::ItinerariesController < Api::ApiController
  def index
    raise_errors_if_empty_params :user_id
    user = User.find(params[:user_id])
    itineraries = user.itineraries.order("created_at desc")
    render json: itineraries
  end

  def query
    raise_errors_if_empty_params :duration, :user_id
    permit = params.permit(:duration, :user_id, :data, :name)
    itinerary = Itinerary.create(permit)
    if itinerary.errors.present?
      render_errors 2002, itinerary.full_error_messages
    else 
      render json: itinerary
    end
  end
end