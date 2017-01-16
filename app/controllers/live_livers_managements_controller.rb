class LiveLiversManagementsController < ApplicationController
  before_action :set_live_livers_management, only: [:show, :edit, :update, :destroy]

  # GET /live_livers_managements
  # GET /live_livers_managements.json
  def index
    @liver = LineLiver.find_by_line_liver_uid(params[:line_liver_uid])
  end

  # GET /live_livers_managements/1
  # GET /live_livers_managements/1.json
  def show
  end

  # GET /live_livers_managements/new
  def new
    @live_livers_management = LiveLiversManagement.new
  end

  # GET /live_livers_managements/1/edit
  def edit
  end

  # POST /live_livers_managements
  # POST /live_livers_managements.json
  def create
    @live_livers_management = LiveLiversManagement.new(live_livers_management_params)

    respond_to do |format|
      if @live_livers_management.save
        format.html { redirect_to @live_livers_management, notice: 'Live livers management was successfully created.' }
        format.json { render :show, status: :created, location: @live_livers_management }
      else
        format.html { render :new }
        format.json { render json: @live_livers_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /live_livers_managements/1
  # PATCH/PUT /live_livers_managements/1.json
  def update
    respond_to do |format|
      if @live_livers_management.update(live_livers_management_params)
        format.html { redirect_to @live_livers_management, notice: 'Live livers management was successfully updated.' }
        format.json { render :show, status: :ok, location: @live_livers_management }
      else
        format.html { render :edit }
        format.json { render json: @live_livers_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /live_livers_managements/1
  # DELETE /live_livers_managements/1.json
  def destroy
    @live_livers_management.destroy
    respond_to do |format|
      format.html { redirect_to live_livers_managements_url, notice: 'Live livers management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_live_livers_management
      @live_livers_management = LiveLiversManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def live_livers_management_params
      params.fetch(:live_livers_management, {})
    end
end
