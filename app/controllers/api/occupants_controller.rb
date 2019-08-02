class Api::OccupantsController < ApplicationController
  before_action :set_occupant, only: %i[show update destroy]

  def index
    @occupants = Occupant.all
    render json: @occupants
  end

  def update
    if @occupant.update(occupant_params)
      render json: { user: UserSerializer.new(@user) }, status: :ok
    else
      render json: @occupant.errors, status: :unprocessable_entity
    end
  end

  def create
      @occupant = Occupant.new(occupant_params)
      if @occupant.save
        render json: { user: UserSerializer.new(@user) }, status: :ok
      else
        render json: { error: 'failed to create occupant' }, status: :unprocessable_entity
      end
    end

  def destroy
   @occupant.destroy
   render json: { user: UserSerializer.new(@user) }, status: :ok
  end
 
  private

  def set_occupant
    @occupant = Occupant.find(params[:id])
  end

  def occupant_params
    params.require(:occupant).permit(:first_name, :last_name, :user_id, :relationship)
  end
end