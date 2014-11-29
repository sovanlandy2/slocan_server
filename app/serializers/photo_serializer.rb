class PhotoSerializer < ActiveModel::Serializer
  attributes :url, :width, :height, :venue, :id
end