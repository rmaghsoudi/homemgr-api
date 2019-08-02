class Api::ChoresController < ApplicationController
  before_action :set_chore, only: %i[show update destroy]

  def index
    @chores = Chore.all.select { |chore| chore.user_id == params[:id]}
    render json: @chores
  end

  def update
    if @chore.update(chore_params)
      render json: { user: UserSerializer.new(@user) }, status: :ok
    else
      render json: @chore.errors, status: :unprocessable_entity
    end
  end

  def create
      @chore = Chore.create(chore_params)
      if @chore.save
        render json: { user: UserSerializer.new(@user) }, status: :ok
      else
        render json: { error: 'failed to create chore' }, status: :unprocessable_entity
      end
    end

  def destroy
   @chore.destroy
   render json: { user: UserSerializer.new(@user) }, status: :ok
  end
 
  private

  def set_chore
    @chore = Chore.find(params[:id])
  end

  def chore_params
    params.require(:chore).permit(:title, :complete, :description, :due, :user_id, :occupant_id)
  end
end