class PrayerReceiversController < ApplicationController
  before_action :set_prayer_receiver, only: %i[ show edit update destroy ]

  # GET /prayer_receivers or /prayer_receivers.json
  def index
    @prayer_receivers = PrayerReceiver.all
  end

  # GET /prayer_receivers/1 or /prayer_receivers/1.json
  def show
  end

  # GET /prayer_receivers/new
  def new
    @prayer_receiver = PrayerReceiver.new
  end

  # GET /prayer_receivers/1/edit
  def edit
  end

  # POST /prayer_receivers or /prayer_receivers.json
  def create
    @prayer_receiver = PrayerReceiver.new(prayer_receiver_params)

    respond_to do |format|
      if @prayer_receiver.save
        format.html { redirect_to prayer_receiver_url(@prayer_receiver), notice: "Prayer receiver was successfully created." }
        format.json { render :show, status: :created, location: @prayer_receiver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prayer_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prayer_receivers/1 or /prayer_receivers/1.json
  def update
    respond_to do |format|
      if @prayer_receiver.update(prayer_receiver_params)
        format.html { redirect_to prayer_receiver_url(@prayer_receiver), notice: "Prayer receiver was successfully updated." }
        format.json { render :show, status: :ok, location: @prayer_receiver }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prayer_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_receivers/1 or /prayer_receivers/1.json
  def destroy
    @prayer_receiver.destroy!

    respond_to do |format|
      format.html { redirect_to prayer_receivers_url, notice: "Prayer receiver was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayer_receiver
      @prayer_receiver = PrayerReceiver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prayer_receiver_params
      params.require(:prayer_receiver).permit(:first_name, :city, :email, :end_date)
    end
end
