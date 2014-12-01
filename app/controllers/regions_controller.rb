class RegionsController < ApplicationController
  respond_to :json

  def index
    respond_with Region.all
  end

  def create
    respond_with Region.create(region_params)
  end

  private

  def region_params
    params.require(:region).permit(:name, :number)
  end
end