class PrayerGiversController < ApplicationController
  # GET /prayer_givers/new
  def new
    @prayer_giver = PrayerGiver.new
  end

  # POST /prayer_givers or /prayer_givers.json
  def create
    @prayer_giver = PrayerGiver.new(prayer_giver_params)

    respond_to do |format|
      if @prayer_giver.save
        format.html { redirect_to new_prayer_giver_path, notice: "Prayer giver was successfully created." }
        format.json { render :show, status: :created, location: @prayer_giver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prayer_giver.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def prayer_giver_params
    params.require(:prayer_giver).permit(:first_name, :city, :email, :end_date)
  end
end
