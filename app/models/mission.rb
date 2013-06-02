class Mission < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :finished
  belongs_to :user
  has_many :checkpoints
  has_many :milestones
end
