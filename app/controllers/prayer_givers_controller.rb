class PrayerGiversController < ApplicationController
  before_action :set_prayer_giver, only: %i[ show edit update destroy ]

  # GET /prayer_givers or /prayer_givers.json
  def index
    @prayer_givers = PrayerGiver.all
  end

  # GET /prayer_givers/1 or /prayer_givers/1.json
  def show
  end

  # GET /prayer_givers/new
  def new
    @prayer_giver = PrayerGiver.new
  end

  # GET /prayer_givers/1/edit
  def edit
  end

  # POST /prayer_givers or /prayer_givers.json
  def create
    @prayer_giver = PrayerGiver.new(prayer_giver_params)

    respond_to do |format|
      if @prayer_giver.save
        format.html { redirect_to prayer_giver_url(@prayer_giver), notice: "Prayer giver was successfully created." }
        format.json { render :show, status: :created, location: @prayer_giver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prayer_giver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prayer_givers/1 or /prayer_givers/1.json
  def update
    respond_to do |format|
      if @prayer_giver.update(prayer_giver_params)
        format.html { redirect_to prayer_giver_url(@prayer_giver), notice: "Prayer giver was successfully updated." }
        format.json { render :show, status: :ok, location: @prayer_giver }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prayer_giver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_givers/1 or /prayer_givers/1.json
  def destroy
    @prayer_giver.destroy!

    respond_to do |format|
      format.html { redirect_to prayer_givers_url, notice: "Prayer giver was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayer_giver
      @prayer_giver = PrayerGiver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prayer_giver_params
      params.require(:prayer_giver).permit(:first_name, :city, :email, :end_date)
    end
end
