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

  def destroy
    raise_errors_if_empty_params :id, :user_id
    user = get_api_entity User.find_by(id: params[:user_id]), User
    itin = get_api_entity user.itineraries.find_by(id: params[:id]),  Itinerary
    itin.destroy 
    render json: itin
  end
end