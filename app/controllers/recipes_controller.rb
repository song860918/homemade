class RecipesController < ApplicationController
  
  def new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:title, :text))
    @recipe.save
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

end
