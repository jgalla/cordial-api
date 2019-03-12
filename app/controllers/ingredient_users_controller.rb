class IngredientUsersController < ApplicationController
  before_action :set_ingredient_user, only: [:show, :update, :destroy]

  # GET /ingredient_users
  def index
    @ingredient_users = IngredientUser.all

    render json: @ingredient_users
  end

  # GET /ingredient_users/1
  def show
    render json: @ingredient_user
  end

  # POST /ingredient_users
  def create
    @ingredient_user = IngredientUser.new(ingredient_user_params)

    if @ingredient_user.save
      render json: @ingredient_user, status: :created, location: @ingredient_user
    else
      render json: @ingredient_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredient_users/1
  def update
    if @ingredient_user.update(ingredient_user_params)
      render json: @ingredient_user
    else
      render json: @ingredient_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredient_users/1
  def destroy
    @ingredient_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_user
      @ingredient_user = IngredientUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ingredient_user_params
      params.require(:ingredient_user).permit(:user_id, :ingredient_id)
    end
end
