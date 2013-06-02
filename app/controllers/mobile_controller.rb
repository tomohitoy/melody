class MobileController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:mission_id])
    @milestone = @mission.milestones.build
  end
  def clear
    
  end
end
