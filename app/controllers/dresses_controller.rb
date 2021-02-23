class DressesController < ApplicationController
  before_action :set_params, only: [:show, :destroy]
  def index
    @dresses = policy_scope(Dress.all)
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
    authorize @dress
  end

  def destroy
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def dress_params
    params.require(:dress).permit(:title, :description, :photo, :color, :category, :price)
  end

  def set_params
    @dress = Dress.find(params[:id])
  end
end
