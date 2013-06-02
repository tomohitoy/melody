class Milestone < ActiveRecord::Base
  attr_accessible :address, :checkpoint_id, :image, :latitude, :longitude, :mission_id, :user_id
  belongs_to :user
  belongs_to :mission
  belongs_to :checkpoint
  mount_uploader :image, ImageUploader
end
