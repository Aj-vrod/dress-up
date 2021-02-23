class DressesController < ApplicationController
  before_action :set_params, only: [:show, :destroy]
  def index
    @dresses = Dress.all
  end

  def show
    @dress = Dress.find(params[:id])
  end

  def destroy
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def set_params
    @dress = Dress.find(params[:id])
  end
end
