class RecipesController < ApplicationController
 
  def index
    @recipes = Recipe.all
  end
 
  def new
  end

  def create
    @recipe = Recipe.new(precipe_params)
    @recipe.save
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  private
    def recipe_params
      params.require(:recipe).permit(:title, :text)
    end

end
