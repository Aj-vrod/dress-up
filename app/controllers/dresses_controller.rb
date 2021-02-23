class DressesController < ApplicationController
  before_action :set_params, only: [:show, :destroy]
  def index
    @dresses = Dress.all
  end
  
  def new
    @dress = Dress.new
  end
  
  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user
    if @dress.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def show
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
