class BedsController < ApplicationController
  before_action :set_bed, only: [:new, :create, :show, :destroy]

  def index
    @beds = Bed.all
  end

  def show
  end

  def new
    @bed = Bed.new
  end

  def create
    @bed = Bed.new(bed_params)
    if @bed.save
      redirect_to beds_path
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
    params.require(:bed).permit(:category)
  end
end
