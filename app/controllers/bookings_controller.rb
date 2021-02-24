class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.dress = Dress.find(params[:dress_id])
    if @booking.save!
      redirect_to bookings_path
    else
      redirect_to dresses_path(@dress)
    end
    authorize @booking
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
