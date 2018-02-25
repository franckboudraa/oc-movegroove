class LogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_log_entry, only: [:show, :edit, :update, :destroy]

  def index
    @logs = Log.all.includes(:activity, :activity_intensity).order(id: :desc)
    @activities = Activity.all.order(:id)
    @user = current_user
  end

  def show
  end

  def edit
    @activity = Activity.find(@log.activity_id)
  end

  def new
    @log = Log.new
    @activity = Activity.find(params[:id])
  end

  def create
    @log = Log.new(log_params)
    @log.user = current_user
    @activity = Activity.find(log_params[:activity_id])

    respond_to do |format|
      if @log.save
        format.html { redirect_to @log, notice: 'Log entry was successfully created.' }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_log_entry
    @log = Log.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def log_params
    params.require(:log).permit(:duration, :activity_id, :activity_intensity_id, :user_id, :comment, :feeling)
  end

end
