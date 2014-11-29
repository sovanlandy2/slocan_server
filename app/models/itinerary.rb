class Itinerary < ActiveRecord::Base

  before_create :generate

  belongs_to :user

  private
    def generate
      errors.add(:user_id, "No user_id specified")  if self.user_id.blank?
      errors.add(:duration, "No duration specified") if self.duration.blank?
      user = User.find_by(id: user_id)
      errors.add(:user_id, "Invalid user id")  if self.user_id.blank?
      
      venues = user.top_venues
      duration = self.duration 
      
      # morning is 5 hour
      # afternoon is 4 hours
      # evening is 
      # morning_array = [
      #    {place1: 2}, {place2: 3}, {place4: wholeday}
      # => ]
      data = Array.new(duration)
      
      whole_day_venue = venues.whole_day.shuffle.first rescue nil
      morning_venues = venues.morning.order("rating desc").limit(10)
      afternoon_venues = venues.afternoon.order("rating desc").limit(10)
      evening_venues = venues.evening.order("rating desc").limit(10)


      duration.times do |i|
        if whole_day_venue.present?
          data[i] = {
            "whole_day" => {
              "venues" => [
                whole_day_venue
              ]
            }
          }
          whole_day_venue = nil # only ever pick on whole day venues
        else
          
          data[i] = Hash.new 
          data[i] =  {"morning" => {"venues" => []}, "afternoon" => {"venues" => []}, "evening" => {"venues" => []}}
          
          #morning
          morning_duration = 4
          reach_end = false
          while morning_duration > 0 && morning_venues.present? && !reach_end 
            morning_venues.each do |venue|
              if (venue.avg_time_spent < morning_duration)
               data[i]["morning"]["venues"] << venue 
               morning_venues = morning_venues - [venue]
               morning_duration -= venue.avg_time_spent
               break
              end
              if(venue == morning_venues.last)
                reach_end = true
              end
            end
          end

          #afternoon
          afternoon_duration = 5
          reach_end = false
          while afternoon_duration > 0 && afternoon_venues.present? && !reach_end 
            afternoon_venues.each do |venue|
              if (venue.avg_time_spent < afternoon_duration)
               data[i]["afternoon"]["venues"] << venue 
               afternoon_venues = afternoon_venues - [venue]
               afternoon_duration -= venue.avg_time_spent
               break
              end
              if(venue == afternoon_venues.last)
                reach_end = true
              end
            end
          end

          #evening
          evening_duration = 5
          reach_end = false
          while evening_duration > 0 && evening_venues.present? && !reach_end
            evening_venues.each do |venue|
              if (venue.avg_time_spent < evening_duration)
               data[i]["evening"]["venues"] << venue 
               evening_venues = evening_venues - [venue]
               evening_duration -= venue.avg_time_spent
               break
              end
              if(venue == evening_venues.last)
                reach_end = true
              end
            end
          end

        end
      end
      
      self.data = data 

      if !self.name.present?
        if duration == 1
          self.name = "Singapore #{duration} day stay #{Time.now.to_i}"
        else
          self.name = "Singapore #{duration} days stay #{Time.now.to_i}"
        end
      end
    end

end
