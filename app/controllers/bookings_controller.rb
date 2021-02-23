class BookingsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
  end
end
