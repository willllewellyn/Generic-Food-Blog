# frozen_string_literal: true

class RecipesController < ApplicationController
  http_basic_authenticate_with name: 'dhh', password: 'secret', except: %i[index show]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    session_id = session.id
    page_id = params[:id]
    page_name = @recipe.title
    RecipesService.record_views(session_id, page_id, page_name)
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :author, :ingredient, :method)
  end
end
