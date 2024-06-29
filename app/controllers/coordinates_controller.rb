class CoordinatesController < ApplicationController
  def random
    @tops = Cloth.where(category: 'tops').sample
    @bottoms = Cloth.where(category: 'bottoms').sample
    @shoes = Cloth.where(category: 'shoes').sample
    if @tops.nil? || @bottoms.nil? || @shoes.nil?
      flash[:alert] = "トップス、ボトムス、靴のいずれかが登録されていません。"
      redirect_to cloths_path
    else
      @coordinate = Coordinate.new
      render 'random'
    end
  end

  def create
    @coordinate = Coordinate.new(coordinate_params)
    #binding.irb
    if @coordinate.save
      create_cloth_coordinates(@coordinate)
      redirect_to cloth_coordinates_path, notice: 'コーディネートが保存されました。'
    else
      render 'random'
    end
  end

  private

  def coordinate_params
    params.require(:coordinate).permit(:memo).merge(user_id: current_user.id)
  end

  def create_cloth_coordinates(coordinate)
    ClothCoordinate.create(coordinate: coordinate, cloth: Cloth.find(params[:tops_id]))
    ClothCoordinate.create(coordinate: coordinate, cloth: Cloth.find(params[:bottoms_id]))
    ClothCoordinate.create(coordinate: coordinate, cloth: Cloth.find(params[:shoes_id]))
  end
end




