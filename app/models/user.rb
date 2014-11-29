class User < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  has_many :itineraries, dependent: :destroy
end
