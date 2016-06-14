class Genre < ActiveRecord::Base
  has_many :places_genres
  has_many :places, through: :places_genres

end
