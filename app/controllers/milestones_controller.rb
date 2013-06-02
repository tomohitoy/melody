class MilestonesController < ApplicationController
  # GET /milestones
  # GET /milestones.json
  def index
    @milestones = Milestone.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @milestones }
    end
  end

  # GET /milestones/1
  # GET /milestones/1.json
  def show
    @milestone = Milestone.find(params[:id])
  end

  # GET /milestones/new
  # GET /milestones/new.json
  def new
    @milestone = Milestone.new
  end

  # GET /milestones/1/edit
  def edit
    @milestone = Milestone.find(params[:id])
  end

  # POST /milestones
  # POST /milestones.json
  def create
    @milestone = Milestone.new(params[:milestone])
    @mission = @milestone.mission
    @milestone.save
  end

  # PUT /milestones/1
  # PUT /milestones/1.json
  #def update
  #  @milestone = Milestone.find(params[:id])

  #  respond_to do |format|
  #    if @milestone.update_attributes(params[:milestone])
  #      format.html { redirect_to @milestone, notice: 'Milestone was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @milestone.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /milestones/1
  # DELETE /milestones/1.json
  def destroy
    @milestone = Milestone.find(params[:id])
    @milestone.destroy
  end
end
