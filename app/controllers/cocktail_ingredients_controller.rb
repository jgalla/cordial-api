class CocktailIngredientsController < ApplicationController
  before_action :set_cocktail_ingredient, only: [:show, :update, :destroy]

  # GET /cocktail_ingredients
  def index
    @cocktail_ingredients = CocktailIngredient.all

    render json: @cocktail_ingredients
  end

  # GET /cocktail_ingredients/1
  def show
    render json: @cocktail_ingredient
  end

  # POST /cocktail_ingredients
  def create
    @cocktail_ingredient = CocktailIngredient.new(cocktail_ingredient_params)

    if @cocktail_ingredient.save
      render json: @cocktail_ingredient, status: :created, location: @cocktail_ingredient
    else
      render json: @cocktail_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cocktail_ingredients/1
  def update
    if @cocktail_ingredient.update(cocktail_ingredient_params)
      render json: @cocktail_ingredient
    else
      render json: @cocktail_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cocktail_ingredients/1
  def destroy
    @cocktail_ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail_ingredient
      @cocktail_ingredient = CocktailIngredient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cocktail_ingredient_params
      params.require(:cocktail_ingredient).permit(:ingredient_id, :cocktail_id)
    end
end
