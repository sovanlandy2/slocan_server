class VenueSerializer < ActiveModel::Serializer 
  attributes :name, :address_blob, :lat, :lng, :tags, :rating, :tip, :avg_time_spent, :best_time_to_visit

  def lat
    object.latitude
  end
  def lng
    object.longigtude
  end
end