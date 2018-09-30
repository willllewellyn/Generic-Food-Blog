# frozen_string_literal: true

class RecipeCommentsController < ApplicationController
  http_basic_authenticate_with name: 'dhh', password: 'secret', only: :destroy

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipecomment = @recipe.recipe_comments.create(comment_params)
    redirect_to article_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipecomment = @recipe.recipe_comments.find(params[:id])
    @recipecomment.destroy
    redirect_to article_path(@recipe)
  end

  private

  def comment_params
    params.require(:recipe_comment).permit(:commenter, :body)
  end
end
