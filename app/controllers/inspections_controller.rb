class InspectionsController < ApplicationController
  before_action :set_inspection, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /inspections
  # GET /inspections.json
  def index
    if params[:search]
      @vehicle = Vehicle.where(:vin => params[:search])
      @inspections = Inspection.where(:vehicle_id => @vehicle)
    else
      @inspections = Inspection.all.order(:id=> :asc)
    end
  end

  def main
  end

  # GET /inspections/1
  # GET /inspections/1.json
  def show
    @dealer_id = @inspection.dealer_id
    @dealer = Dealer.find_by id: @dealer_id
    @vehicle = Vehicle.find_by id: @inspection.vehicle_id
    @response = Response.find_by inspection_id: @inspection.id
    @media = Medium.all
  end

  # GET /inspections/new
  def new
    @inspection = Inspection.new
    @vehicle = Vehicle.new
  end

  # GET /inspections/1/edit
  def edit
  end

  # POST /inspections
  # POST /inspections.json
  def create
    params[:inspection][:vehicle].permit!
    @inspection = Inspection.new(inspection_params)
    @vehicle = Vehicle.new(params[:inspection][:vehicle])
    respond_to do |format|
      if @vehicle.valid?
        @vehicle.save
        @inspection.vehicle_id = @vehicle.id
        @inspection.save
        session[:inspection_id] = @inspection.id
        session[:step] = 0
        format.html { redirect_to controller: 'responses',  action: 'new', notice: 'Inspection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inspection }
      else
        format.html { render action: 'new' }
        format.json { render json: @inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspections/1
  # PATCH/PUT /inspections/1.json
  def update
    respond_to do |format|
      if @inspection.update(inspection_params)
        format.html { redirect_to @inspection, notice: 'Inspection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspections/1
  # DELETE /inspections/1.json
  def destroy
    @inspection.destroy
    respond_to do |format|
      format.html { redirect_to inspections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection
      @inspection = Inspection.find(params[:id])
      @vehicle = Vehicle.find(@inspection.vehicle_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspection_params
      params.require(:inspection).permit(:dealer_id, :user_id, :vehicle_id, vehicle_attributes: [:vin, :year, :make, :model, :stock_number, :exterior_color, :interior_color])
    end
end
