class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  layout "application"

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @report }
      else
        format.html { render action: 'new' }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url }
      format.json { head :no_content }
    end
  end

  def pdf
    @sections = Section.all
    @inspection = Inspection.find(params[:id])
    @dealer = Dealer.find_by id: @inspection.dealer_id
    @vehicle = Vehicle.find_by id: @inspection.vehicle_id
    @response = Response.find_by inspection_id: @inspection.id
    @section = Section.find_by id: @response.section_id
    @res = Response.all.where(:inspection_id => params[:id]).sort_by{|e| e[:section_id]}
    respond_to do |format|
        format.html
        format.pdf do
          render  :pdf => "file.pdf",
                  :layout => 'nill.html',
                  :encoding => 'UTF-8',
                  :page_size => 'letter',
                  :footer => { :center => '[page]', :spacing => 0 }
          end
    end      
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:name)
    end
end
