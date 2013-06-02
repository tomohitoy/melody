class MobileController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:misson_id])
  end
  def clear
    
  end
end
