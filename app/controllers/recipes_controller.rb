class RecipesController < ApplicationController
   before_action :authenticate_user

   def index
      recipes = Recipe.all
      if current_user
      render json: recipes, each_serializer: RecipeSerializer
      else  
         render json: { error: ['Validation Errors'] }, status: :unauthorized
      end
   end

    def create 
      recipe = @current_user.recipes.create(recipe_params)
      if recipe 
         render json: recipe, status: :created
      else 
         render json:{ errors: recipe.errors.messages}, status: :unprocessable_entity
      end
   
    end




     private 

     def recipe_params 
        params.permit(:title, :instructions, :minutes_to_complete)
     end



end
