class UserSerializer < ActiveModel::Serializer
  attributes :id, :age, :country_origin, :device_id
end
