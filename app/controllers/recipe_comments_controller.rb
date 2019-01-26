# frozen_string_literal: true

class RecipeCommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_comment = @recipe.recipe_comments.create(comment_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_comment = @recipe.recipe_comments.find(params[:id])
    @recipe_comment.destroy
    redirect_to recipe_path(@recipe)
  end

  private

  def comment_params
    params.require(:recipe_comment).permit(:commenter, :body)
  end
end
