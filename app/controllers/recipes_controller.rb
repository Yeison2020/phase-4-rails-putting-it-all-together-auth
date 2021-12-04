class RecipesController < ApplicationController

    def create 



    end




     private 

     def recipe_params 
        params.permit(:title, :instructions, :minutes_to_complete)
     end



end
