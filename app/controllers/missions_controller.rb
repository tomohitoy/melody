class MissionsController < ApplicationController
  # GET /missions
  # GET /missions.json
  def index
    @missions = Mission.all
  end
  
  def history
    @missions = Mission.all
  end
  
  def certificate
    @mission = Mission.find(params[:id])
    @checkpoints = @mission.checkpoints
    @milestones = @mission.milestones
  end
  
  def finished
    @mission = Mission.find(params[:id])
  	@mission.toggle(:finished)
  	@mission.save
  end

  # GET /missions/1
  # GET /missions/1.json
  def show
    @mission = Mission.find(params[:id])
  end

  # GET /missions/new
  # GET /missions/new.json
  def new
    @mission = Mission.new
  end

  # GET /missions/1/edit
  #def edit
  #  @mission = Mission.find(params[:id])
  #end

  # POST /missions
  # POST /missions.json
  def create
    @mission = Mission.new(params[:mission])
    if @mission.save
      redirect_to new_checkpoint_path(:mission_id => @mission.id)
    else
      render :action => 'new'
    end
  end

  # PUT /missions/1
  # PUT /missions/1.json
  #def update
  #  @mission = Mission.find(params[:id])

  #  respond_to do |format|
  #    if @mission.update_attributes(params[:mission])
  #      format.html { redirect_to @mission, notice: 'Mission was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @mission.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /missions/1
  # DELETE /missions/1.json
  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy

    respond_to do |format|
      format.html { redirect_to missions_url }
      format.json { head :no_content }
    end
  end
end
