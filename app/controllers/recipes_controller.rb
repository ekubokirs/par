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

	end

	def show
		@recipe = Recipe.find_by(params[:id])
	end

	def edit
		@recipe = Recipe.find_by(params[:id])
	end

	def update
	end

	def destroy
	end

end
