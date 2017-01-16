class LineLiversController < ApplicationController
  before_action :set_line_liver, only: [:show, :edit, :update, :destroy]

  # GET /line_livers
  # GET /line_livers.json
  def index
    @line_livers = LineLiver.all
  end

  # GET /line_livers/1
  # GET /line_livers/1.json
  def show
  end

  # GET /line_livers/new
  def new
    @line_liver = LineLiver.new
  end

  # GET /line_livers/1/edit
  def edit
  end

  # POST /line_livers
  # POST /line_livers.json
  def create
    @line_liver = LineLiver.new(line_liver_params)

    respond_to do |format|
      if @line_liver.save
        format.html { redirect_to @line_liver, notice: 'Line liver was successfully created.' }
        format.json { render :show, status: :created, location: @line_liver }
      else
        format.html { render :new }
        format.json { render json: @line_liver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_livers/1
  # PATCH/PUT /line_livers/1.json
  def update
    respond_to do |format|
      if @line_liver.update(line_liver_params)
        format.html { redirect_to @line_liver, notice: 'Line liver was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_liver }
      else
        format.html { render :edit }
        format.json { render json: @line_liver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_livers/1
  # DELETE /line_livers/1.json
  def destroy
    @line_liver.destroy
    respond_to do |format|
      format.html { redirect_to line_livers_url, notice: 'Line liver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_liver
      @line_liver = LineLiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_liver_params
      params.require(:line_liver).permit(:name, :line_liver_id, :active)
    end
end
