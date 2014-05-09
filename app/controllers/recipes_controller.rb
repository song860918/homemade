class RecipesController < ApplicationController
 
  def index
    @recipes = Recipe.all
  end
 
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
    #@comment = @recipe.comments.new
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    
    redirect_to recipes_path
  end
  
  private
    def recipe_params
      params.require(:recipe).permit(:title, :text)
    end

end
