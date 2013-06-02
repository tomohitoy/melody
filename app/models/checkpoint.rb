class Checkpoint < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :mission_id, :point, :pointnum, :title, :state
  belongs_to :mission
  has_one :milestone
end
