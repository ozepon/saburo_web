class LineLivePagesController < ApplicationController
  before_action :set_line_live_page, only: [:show, :edit, :update, :destroy]

  # GET /line_live_pages
  # GET /line_live_pages.json
  def index
    @line_live_pages = LineLivePage.all
  end

  # GET /line_live_pages/1
  # GET /line_live_pages/1.json
  def show
  end

  # GET /line_live_pages/new
  def new
    @line_live_page = LineLivePage.new
  end

  # GET /line_live_pages/1/edit
  def edit
  end

  # POST /line_live_pages
  # POST /line_live_pages.json
  def create
    @line_live_page = LineLivePage.new(line_live_page_params)

    respond_to do |format|
      if @line_live_page.save
        format.html { redirect_to @line_live_page, notice: 'Line live page was successfully created.' }
        format.json { render :show, status: :created, location: @line_live_page }
      else
        format.html { render :new }
        format.json { render json: @line_live_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_live_pages/1
  # PATCH/PUT /line_live_pages/1.json
  def update
    respond_to do |format|
      if @line_live_page.update(line_live_page_params)
        format.html { redirect_to @line_live_page, notice: 'Line live page was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_live_page }
      else
        format.html { render :edit }
        format.json { render json: @line_live_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_live_pages/1
  # DELETE /line_live_pages/1.json
  def destroy
    @line_live_page.destroy
    respond_to do |format|
      format.html { redirect_to line_live_pages_url, notice: 'Line live page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_live_page
      @line_live_page = LineLivePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_live_page_params
      params.require(:line_live_page).permit(:value, :line_liver_id)
    end
end
