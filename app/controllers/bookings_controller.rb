class BookingsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    authorize @dress
    @booking = Booking.new
    @user = current_user
  end
end
