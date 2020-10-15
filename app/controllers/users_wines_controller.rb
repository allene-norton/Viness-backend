class UsersWinesController < ApplicationController
    def index
        usersWines = UsersWine.all
        render json: usersWines
    end

    
    def destroy
        wine = UsersWine.find_by(wine_id: params[:id])
        wine.destroy
    end
end
