class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @inspection = Inspection.find session[:inspection_id]
    session[:step] = @inspection.responses.count + 1
    @response = Response.new
    @medium = Medium.new
  end

  # GET /responses/1/edit
  def edit
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = Response.new(response_params)
    @check_val = params[:response][:check]
    @response.set_check = true if (3..29).include? session[:step] 
    @response.set_details = true if ( @check_val=='1' || session[:step]==1) # also validate for step 1, with regex this time. TODO  
    @response.set_auxdetails = true if ( @check_val=='0' && session[:step]==1) 
    
    respond_to do |format|
      if @response.save
        @i = 0
        while params["medium_o"+@i.to_s]
          @medium = Medium.new
          @medium.response_id = @response.id
          @medium.filedata = params["medium_o"+@i.to_s].read;
          @medium.filename = params["medium_o"+@i.to_s].original_filename;
          @medium.filetype = params["medium_o"+@i.to_s].content_type;
          @medium.save
          @i = @i + 1
          session[:debug] = session[:debug] + @medium.filename + "."
        end
        if (session[:step]== Section.count)
          session[:step]= nil
          session[:inspection_id] = nil
          format.html { redirect_to controller: 'dashboard', action: 'index', notice: 'inspection completed.' }
          format.json { render action: 'show', status: :created, location: @response }
        else  
          format.html { redirect_to action: 'new', notice: 'Response was successfully created.' }
          format.json { render action: 'new', status: :created, location: @response }
        end
      else 
        format.html { render action: 'new' }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html { redirect_to @response, notice: 'Response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response.destroy
    respond_to do |format|
      format.html { redirect_to responses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response).permit(:inspection_id, :section_id, :check, :details, :auxilary_details, media_attributes: [:response_id, :label, :description, :filedata, :filename, :filetype])
    end
end
