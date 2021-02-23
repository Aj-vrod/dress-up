class DressesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @dress = Dress.new
    @dress.user = @user
  end
end
