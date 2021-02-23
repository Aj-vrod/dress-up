class DressesController < ApplicationController

  def show
    @dress = Dress.find(params[:id])
  end


end
