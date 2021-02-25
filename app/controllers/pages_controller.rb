class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @dresses = Dress.where(category: 'Casual Dresses').limit(3)
  end
end
