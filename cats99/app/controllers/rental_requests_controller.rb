class RentalRequestsController < ApplicationController

  def index
    @rental_requests = RentalRequest.includes(:cats)
  end

  def show
    @rental_requests = RentalRequest.find(params[:id])
  end

  def create
    RentalRequest.create!(params[:rental_request])
  end

end
