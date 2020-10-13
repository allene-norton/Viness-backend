class WinesController < ApplicationController
    def index
        wines = Wine.all 
        render json: wines
    end

    def create
        user = User.where(id: params[:user_id]).first
        wine = Wine.find_or_create_by(
            title: wine_params["title"], 
            spn_id: wine_params["id"],
            averageRating: wine_params["averageRating"],
            description: wine_params["description"],
            imageUrl: wine_params["imageUrl"],
            link: wine_params["link"],
            price: wine_params["price"],
            ratingCount: wine_params["ratingCount"],
            score: wine_params["score"])
            # byebug
        if wine.save 
            unless user.wines.include?(wine)
                user.wines << wine
            end
        end
        render json: wine
    end

    private

    def wine_params
        params.require(:wine).permit(:title, :id, :averageRating, :description, :imageUrl, :link, :price, :ratingCount, :score, :user_id)
    end
end
