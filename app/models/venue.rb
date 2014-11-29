class Venue < ActiveRecord::Base
  acts_as_taggable_array_on :tags
  enum best_time_for_visit:  [:morning, :afternoon, :evening, :night]

  has_many :photos
end
