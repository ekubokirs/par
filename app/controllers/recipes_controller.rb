class RecipesController < ApplicationController
	def index
		@recipes = Recipes.all
	end

	def user_index
		@recipes = Recipes.current_user.all
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new recipe_params
		@recipe.save

		redirect_to root_url
		flash[:notice] = "Recipe Created"
	end

	def show
		@recipe = Recipe.find_by(params[:id])
	end

	def edit
		@recipe = Recipe.find_by(params[:id])
	end

	def update
		@recipe = Recipe.find_by(params[:id])
		@recipe.update_attributes(recipe_params)

		redirect_to root_url
		flash[:notice] = "Recipe Updated"
	end

	def destroy
		recipe = Recipe.find(params[:id])
		recipe.destroy

		redirect_to root_url
		flash[:notice] = "Recipe Deleted"
	end

	private

	def recipe_params
		params.require(:recipe).permit(
			:supply,
			:direction,
			:prep_time,
			:cook_time,
			:food_item,
			:food_type)
	end

end
