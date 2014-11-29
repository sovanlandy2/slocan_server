class VenuesController < ApplicationController 
  respond_to :html, :json
  def index
    @venues = Venue.order("rating desc").page(page_param)
  end

  def create
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def edit
    @venue = Venue.find(params[:id])
  end

 def update
    @venue = Venue.find(params[:id])
    @venue.update_attributes(permit_params)
    respond_with @venue
  end

  def destroy
    
  end

  private
    def permit_params
      params.require(:venue).permit(:name, :best_time_for_visit, :avg_time_spent)
    end
end