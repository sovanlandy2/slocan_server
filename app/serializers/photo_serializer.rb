class PhotoSerializer < ActiveModel::Serializer
  attributes :url, :width, :height, :venue, :id, :counter_like

  def counter_like
    object.votes.count
  end
end