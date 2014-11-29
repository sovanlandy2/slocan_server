class Photo < ActiveRecord::Base
  belongs_to :venue
  has_many :votes
end
