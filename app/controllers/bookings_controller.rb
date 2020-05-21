class BookingsController < ApplicationController

  def index
    # @bookings = Booking.all
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @bed = Bed.find(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.bed_id = params[:bed_id]
    if @booking.save
      redirect_to bed_path(params[:bed_id]), alert: "booking requested!"
    else
      redirect_to bed_path(params[:bed_id]), alert: "request invalid, please try again"
    end
  end

   def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to beds_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

end
