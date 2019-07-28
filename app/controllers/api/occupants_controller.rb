class Api::OccupantsController < ApplicationController
  before_action :set_occupant, only: %i[show update destroy]

  def index
    @occupants = Occupant.all
    render json: @occupants
  end

  def update
    if @occupant.update(occupant_params)
      render json: @occupant
    else
      render json: @occupant.errors, status: :unprocessable_entity
    end
  end

  def create
      @occupant = Occupant.create(occupant_params)
      if @occupant.save
        render json: @occupant
      else
        render json: { error: 'failed to create occupant' }, status: :unprocessable_entity
      end
    end

  def destroy
   @occupant.destroy
  end
 
  private

  def set_occupant
    @occupant = Occupant.find(params[:id])
  end

  def occupant_params
    params.require(:occupant).permit(:first_name, :last_name, :image, :user_id)
  end
end