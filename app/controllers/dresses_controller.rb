class DressesController < ApplicationController
  before_action :set_params, only: [:show, :destroy]
  def index
    if params[:query].present?
      @dresses = policy_scope(Dress.search_dresses(params[:query]))
    else
      @dresses = policy_scope(Dress.all)
    end
  end

  def new
    @dress = Dress.new
    authorize @dress
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user
    authorize @dress
    if @dress.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    authorize @dress
  end

  def destroy
    authorize @dress
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def dress_params
    params.require(:dress).permit(:title, :description, :image, :color, :category, :price)
  end

  def set_params
    @dress = Dress.find(params[:id])
  end
end
