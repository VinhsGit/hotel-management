class BookingHistoriesController < ApplicationController
  before_action :set_booking_history, only: %i[ show edit update destroy ]

  # GET /booking_histories or /booking_histories.json
  def index
    @booking_histories = BookingHistory.all
  end

  # GET /booking_histories/1 or /booking_histories/1.json
  def show
  end

  # GET /booking_histories/new
  def new
    @booking_history = BookingHistory.new
  end

  # GET /booking_histories/1/edit
  def edit
  end

  # POST /booking_histories or /booking_histories.json
  def create
    @booking_history = BookingHistory.new(booking_history_params)

    respond_to do |format|
      if @booking_history.save
        format.html { redirect_to booking_history_url(@booking_history), notice: "Booking history was successfully created." }
        format.json { render :show, status: :created, location: @booking_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_histories/1 or /booking_histories/1.json
  def update
    respond_to do |format|
      if @booking_history.update(booking_history_params)
        format.html { redirect_to booking_history_url(@booking_history), notice: "Booking history was successfully updated." }
        format.json { render :show, status: :ok, location: @booking_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_histories/1 or /booking_histories/1.json
  def destroy
    @booking_history.destroy

    respond_to do |format|
      format.html { redirect_to booking_histories_url, notice: "Booking history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_history
      @booking_history = BookingHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_history_params
      params.require(:booking_history).permit(:user_id, :room_id, :checkIn, :checkOut, :description)
    end
end
