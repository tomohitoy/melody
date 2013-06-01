class Checkpoint < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :mission_id, :point
  geocoded_by :address
  after_validation :geocode
  belongs_to :mission
  has_one :milestone
end
