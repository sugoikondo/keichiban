class PlacesGenre < ActiveRecord::Base
  belongs_to :place
  belongs_to :genre
end
