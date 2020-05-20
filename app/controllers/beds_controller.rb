class BedsController < ApplicationController
  before_action :set_bed, only: [:show, :destroy]

  def index
    @beds = Bed.all
    if params[:category].present?
      @beds = Bed.where(category: params[:category])
    end
    if params[:city].present?
      @beds = Bed.where(city: params[:city])
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    check_role
    @bed = Bed.new
  end

  def create
    @bed = Bed.new(bed_params)
    @bed.user = current_user
    if @bed.save
      redirect_to beds_path, alert: "listing created"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @bed.destroy
  end

  private

  def set_bed
    @bed = Bed.find(params[:id])
  end

  def bed_params
    params.require(:bed).permit(:category, :city)
  end

  def check_role
    unless current_user.role == "provider"
      redirect_to root_path, alert: "access denied"
    end
  end
end


