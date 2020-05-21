class BedsController < ApplicationController
  before_action :set_bed, only: [:show, :destroy]

  def index
    @beds = Bed.all
    @markers = Bed.geocoded.map do |bed|
      {
        lat: bed.latitude,
        lng: bed.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { bed: bed })
        # image_url: helpers.asset_url('/app/assets/images/bf-logo.png')

      }
    end
    # @beds = Bed.all
    if params[:category].present?
      @beds = @beds.where(category: params[:category])
    end
    if params[:address].present?
      @beds = @beds.near(params[:address], 20)
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
      redirect_to beds_path, alert: "LISTING CREATED"
    else
      render :new
    end
  end

  def edit
    @bed = Bed.find(params[:id])
  end

  def update
  end

  def destroy
    @bed = Bed.find(params[:id])
    @bed.destroy
    redirect_to beds_path
  end

  private

  def set_bed
    @bed = Bed.find(params[:id])
  end

  def bed_params
    params.require(:bed).permit(:category, :ward, :address, :photo)
  end

  def check_role
    unless current_user.role == "provider"
      redirect_to root_path, alert: "ACCESS DENIED"
    end
  end
end


