class User < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  has_many :itineraries, dependent: :destroy

  def top_venues
    photo_ids = self.votes.pluck(:photo_id)
    venue_ids = Photo.where(id: photo_ids).pluck(:venue_id)
    while venue_ids.count < 10
      venue_ids += Venue.where("id NOT in (?)",venue_ids).order("rating desc").limit(5).pluck(:id)
    end
    venues = Venue.where(id: venue_ids).order("rating desc")
  end
end
