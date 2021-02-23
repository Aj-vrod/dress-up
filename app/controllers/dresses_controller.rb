class DressesController < ApplicationController
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
    @dress = Dress.find(params[:id])
  end

  private
  def dress_params
    params.require(:dress).permit(:title, :description, :photo, :color, :category, :price)
  end
end
