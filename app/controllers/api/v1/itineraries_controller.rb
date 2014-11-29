class Api::V1::ItinerariesController < Api::ApiController
  def index
    raise_errors_if_empty_params :user_id
    user = User.find(params[:user_id])
    itineraries = user.itineraries.order("created_at desc")
    render json: [Itinerary::get_data(params[:duration], params[:user_id])]
  end

  def query
    raise_errors_if_empty_params :duration, :user_id
    itineraries = Itinerary::get_data(params[:duration], params[:user_id])
    render json: itineraries
  end
end