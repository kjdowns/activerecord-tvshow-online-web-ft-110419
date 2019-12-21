
class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:number_of_stars)
  end
  
  def self.most_popular_show
    show = self.find_by(:number_of_stars, self.highest_rating)
  end
  
end