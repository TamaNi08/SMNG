class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter[:count] = 0

    if @shelter.save
      redirect_to @shelter, notice: "避難所 「#{@shelter.shelter_name}」を登録しました"
    else
      render :new
    end
  end


  def edit
    @shelter = Shelter.find(params[:id])
  end

  def update
    shelter = Shelter.find(params[:id])
    shelter.update!(shelter_params)
    redirect_to shelters_url, notice: "避難所 「#{shelter.shelter_name}」を更新しました"
  end

  def destroy
    shelter = Shelter.find(params[:id])
    shelter.destroy
    redirect_to shelters_url, notice: "避難所 「#{shelter.shelter_name}」を削除しました"
  end

  private
  def shelter_params
    params.require(:shelter).permit(:shelter_name, :capacity, :lat, :lon)
  end

end
