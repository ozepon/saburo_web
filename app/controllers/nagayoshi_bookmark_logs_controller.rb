class NagayoshiBookmarkLogsController < ApplicationController
  before_action :set_nagayoshi_bookmark_log, only: [:show, :edit, :update, :destroy]
  protect_from_forgery except: :create

  # GET /nagayoshi_bookmark_logs
  # GET /nagayoshi_bookmark_logs.json
  def index
    @nagayoshi_bookmark_logs = NagayoshiBookmarkLog.all
  end

  # GET /nagayoshi_bookmark_logs/1
  # GET /nagayoshi_bookmark_logs/1.json
  def show
  end

  # GET /nagayoshi_bookmark_logs/new
  def new
    @nagayoshi_bookmark_log = NagayoshiBookmarkLog.new
  end

  # GET /nagayoshi_bookmark_logs/1/edit
  def edit
  end

  # POST /nagayoshi_bookmark_logs
  # POST /nagayoshi_bookmark_logs.json
  def create
    @nagayoshi_bookmark_log = NagayoshiBookmarkLog.new(nagayoshi_bookmark_log_params)

    respond_to do |format|
      if @nagayoshi_bookmark_log.save
        format.html { redirect_to @nagayoshi_bookmark_log, notice: 'Nagayoshi bookmark log was successfully created.' }
        format.json { render :show, status: :created, location: @nagayoshi_bookmark_log }
      else
        format.html { render :new }
        format.json { render json: @nagayoshi_bookmark_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nagayoshi_bookmark_logs/1
  # PATCH/PUT /nagayoshi_bookmark_logs/1.json
  def update
    respond_to do |format|
      if @nagayoshi_bookmark_log.update(nagayoshi_bookmark_log_params)
        format.html { redirect_to @nagayoshi_bookmark_log, notice: 'Nagayoshi bookmark log was successfully updated.' }
        format.json { render :show, status: :ok, location: @nagayoshi_bookmark_log }
      else
        format.html { render :edit }
        format.json { render json: @nagayoshi_bookmark_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nagayoshi_bookmark_logs/1
  # DELETE /nagayoshi_bookmark_logs/1.json
  def destroy
    @nagayoshi_bookmark_log.destroy
    respond_to do |format|
      format.html { redirect_to nagayoshi_bookmark_logs_url, notice: 'Nagayoshi bookmark log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nagayoshi_bookmark_log
      @nagayoshi_bookmark_log = NagayoshiBookmarkLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nagayoshi_bookmark_log_params
      params.require(:nagayoshi_bookmark_log).permit(:name)
    end
end
