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
    @booking.start_date = Datetime.now +1.week
    if @booking.save
      redirect_to bookings_path, alert: "booking requested!"
    else
      redirect_to bed_path(params[:bed_id]), alert: "request invalid, please try again"
    end
  end

   def edit
    @bed = Bed.find(params[:bed_id])
    @booking = Booking.find(params[:id])
  end

   def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to beds_path
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path, alert: "booking updated"
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

end
