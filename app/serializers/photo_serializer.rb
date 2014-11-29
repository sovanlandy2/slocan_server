class PhotoSerializer < ActiveModel::Serializer
  attributes :url, :width, :height, :venue
end