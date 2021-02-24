class BookingsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    authorize @dress
    @booking = Booking.new
    @user = current_user
  end

  def create
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new(booking_params)
    @booking.dress = @dress
    if @booking.save
      redirect_to dress_path(@booking)
    else
      @user = User.new
      render ""
    end
  end

  private

  def booking_params

  end
end
