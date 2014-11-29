class Venue < ActiveRecord::Base
  acts_as_taggable_array_on :tags
  enum best_time_for_visit:  [:whole_day, :morning, :afternoon, :evening]

  has_many :photos, dependent: :destroy
end
