class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'first_ingredient')
    @recipe.ingredients.build(name: 'second_ingredient')
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    @ingredients
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end

end
