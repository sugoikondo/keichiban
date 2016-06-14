class Place < ActiveRecord::Base
  has_many :places_genres
  has_many :genres, through: :places_genres
end
