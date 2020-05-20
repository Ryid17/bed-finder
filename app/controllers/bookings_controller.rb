class BookingsController < ApplicationController
  def new
    @bed = Bed.find(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bed_path(params[:booking_id])
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
