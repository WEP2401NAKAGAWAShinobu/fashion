class ClothCoordinatesController < ApplicationController
  before_action :set_coordinate, only: [:show, :destroy]

  def index
    @coordinates = Coordinate.includes(:cloths).where(user_id: current_user.id)
  end

  def show
  end

  def destroy
    @coordinate.destroy
    redirect_to cloth_coordinates_path, notice: 'コーディネートが削除されました。'
  end

  private

  def set_coordinate
    @coordinate = Coordinate.find(params[:id])
  end
end


