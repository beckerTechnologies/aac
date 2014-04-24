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
    session[:step] = session[:step] + 1
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
    if( #params[:has_checkbox]
      response_params[:check] && params[:response][:media])
      @response.media_data = params[:response][:media].read;
      @response.media_filename = params[:response][:media].original_filename;
      @response.media_type = params[:response][:media].content_type;
    end 
    respond_to do |format|
      if @response.save
        if (session[:step]== Section.count) #TODO session maintenance. 
          session[:step]= nil
          session[:inspection_id] = nil
          format.html { redirect_to controller: 'dashboard', action: 'index', notice: 'inspection completed.' }
          format.json { render action: 'show', status: :created, location: @response }
        else  
          format.html { redirect_to action: 'new', notice: 'Response was successfully created.' }
          format.json { render action: 'show', status: :created, location: @response }
        end
      else # TODO model validations on check based media and details
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
      params.require(:response).permit(:inspection_id, :section_id, :check, :details, :auxilary_details, media_attributes: [:response_id, :label, :description, :data, :filename, :type])
    end
end
