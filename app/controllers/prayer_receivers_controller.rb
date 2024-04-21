class PrayerReceiversController < ApplicationController
  # GET /prayer_receivers/new
  def new
    @prayer_receiver = PrayerReceiver.new
  end

  # POST /prayer_receivers or /prayer_receivers.json
  def create
    @prayer_receiver = PrayerReceiver.new(prayer_receiver_params)

    respond_to do |format|
      if @prayer_receiver.save
        format.html { redirect_to new_prayer_receiver_path, notice: I18n.t("successful_save") }
        format.json { render :show, status: :created, location: @prayer_receiver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prayer_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def prayer_receiver_params
    params.require(:prayer_receiver).permit(:first_name, :city, :email, :end_date)
  end
end
