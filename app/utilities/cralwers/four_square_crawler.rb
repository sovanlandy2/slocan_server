require 'rest_client'

class Cralwers::FourSquareCrawler
  CLIENT_ID = "E4H5NCQEYKAF0OIG4RQHXUHCQBQHWSFBWT5GYGF11LSTB4FJ"
  CLIENT_SECRET = "OTYBVYXHNOKZEGFT0YPPXP22NI5KF2OCLH1M2ZURRNZZ4RNO"

  attr_accessor :data # :@client

  def initialize()
    #@client = Foursquare2::Client.new(:client_id => 'your_client_id', :client_secret => 'your_secret')
    @data = JSON.parse( RestClient.get("https://api.foursquare.com/v2/venues/explore?near=Singapore&section=arts,outdoors,sights,trending,specials,topPicks&venuePhotos=1&client_id=#{CLIENT_ID}&client_secret=#{CLIENT_SECRET}&v=20140806")) 
  end

  def perform
    @data["response"]["groups"].first["items"].each do |v|

      place = v["venue"]
      venue = Venue.find_by(name: place["name"]) 
      if !venue.present?
        venue = Venue.new
        venue.name = place["name"]
      end
      #rating
      venue.rating = place["rating"]
      
      #location
      location = place["location"]
      venue.address_blob = location["formattedAddress"].join(",")
      venue.latitude = location["lat"]
      venue.longigtude = location["lng"]

      #category
      place["categories"].each do |cat|
        category = cat["name"]
        venue.tags += [category]
      end

      #tip
      venue.tip = v["tips"].first["text"] rescue ""
      venue.source_id = place["id"]
      if venue.save 
        p =  place["featuredPhotos"]
        p["items"].each do |photo|
          old_photo = Photo.find_by(source_id: photo["id"])
          if !old_photo.present?
            pho = Photo.new
            pho.source_id = photo["id"]
            pho.url = photo["prefix"]+photo["width"].to_s+"x"+photo["height"].to_s+photo["suffix"]
            pho.venue_id = venue.id
            pho.width = photo["width"]
            pho.height = photo["height"]
            pho.save
          end
        end
      end
    end
  end
end 