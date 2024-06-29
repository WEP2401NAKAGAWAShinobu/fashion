class ClothsController < ApplicationController
    before_action :set_cloth, only: [:show, :edit, :update, :destroy]
  
    def index
      @cloths = Cloth.all
      @tops = Cloth.tops
      @bottoms = Cloth.bottoms
      @shoes = Cloth.shoes
    end
  
    def show
    end
  
    def new
      @cloth = Cloth.new
    end
  
    def create
      @cloth = Cloth.new(cloth_params)
      @cloth.user = current_user
      if @cloth.save
        redirect_to cloths_path, notice: '服が正常に登録されました。'
      else
        render :new
      end
    end
  
    def edit
      @cloth = Cloth.find(params[:id])
    end
  
    def update
      @cloth = Cloth.find(params[:id])
      if @cloth.update(cloth_params)
        redirect_to cloths_path, notice: '服の情報が正常に更新されました。'
      else
        render :edit
      end
    end
  
    def destroy
      @cloth = Cloth.find(params[:id])
      @cloth.destroy
      redirect_to cloths_path, notice: '服が正常に削除されました。'
    end
  
    private

    def set_cloth
      @cloth = Cloth.find(params[:id])
    end
  
    def cloth_params
      params.require(:cloth).permit(:name, :category, :image, :description)
    end
  end

