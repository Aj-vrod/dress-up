class BookingsController < ApplicationController
  def index
    @booking = policy_scope(Booking)
  end

  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    authorize @booking
  end
end
