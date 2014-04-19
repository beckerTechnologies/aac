class InspectionsController < ApplicationController
  before_action :set_inspection, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /inspections
  # GET /inspections.json
  def index
    @inspections = Inspection.all
  end

  # GET /inspections/1
  # GET /inspections/1.json
  def show
  end

  # GET /inspections/new
  def new
    @inspection = Inspection.new
  end

  # GET /inspections/1/edit
  def edit
  end

  # POST /inspections
  # POST /inspections.json
  def create
    @inspection = Inspection.new(inspection_params)

    respond_to do |format|
      if @inspection.save
        format.html { redirect_to @inspection, notice: 'Inspection was successfully created.' }
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
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspection_params
      params.require(:inspection).permit(:dealer_id, :user_id, :year, :make, :model, :stock_no, :vin_id, :exterior_color, :interior_color, :including_actual_miles, :not_lncluding_actual_miles, :estimated_total_cost_of_repair, :inspection_revealed_safety_issues, :inspection_revealed_safety_issues_details, :inspection_revealed_frame_damage, :inspection_revealed_frame_damage_details, :sec_7_1_a, :sec_7_1_a_details, :sec_7_1_b, :sec_7_1_b_details, :sec_7_1_c, :sec_7_1_c_details, :sec_7_1_d, :sec_7_1_d_details, :sec_7_2_a, :sec_7_2_a_details, :sec_7_2_b, :sec_7_2_b_details, :sec_7_2_c, :sec_7_2_c_details, :sec_7_2_d, :sec_7_2_d_details, :sec_7_2_a, :sec_7_2_a_details, :sec_7_2_b, :sec_7_2_b_details, :sec_7_2_c, :sec_7_2_c_details, :sec_7_2_d, :sec_7_2_d_details, :sec_7_2_e, :sec_7_2_e_details, :sec_7_2_f, :sec_7_2_f_details, :sec_7_2_g, :sec_7_2_g_details, :sec_7_2_h, :sec_7_2_h_details, :sec_7_2_i, :sec_7_2_i_details, :sec_7_2_j, :sec_7_2_j_details, :sec_7_3_a, :sec_7_3_a_details, :sec_7_3_b, :sec_7_3_b_details, :sec_7_3_c, :sec_7_3_c_details, :sec_7_3_d, :sec_7_3_d_details, :sec_7_3_e, :sec_7_3_e_details, :sec_7_3_f, :sec_7_3_f_details, :sec_7_3_g, :sec_7_3_g_details, :sec_7_4, :sec_7_4_details, :sec_7_5, :sec_7_5_details, :sec_7_6, :sec_7_6_details, :sec_7_7, :sec_7_7_details, :estimated_total_cost_for_repairs, :date_of_inspection, :calculation_and_total_cost_for_inspection, :total_cost)
    end
end
