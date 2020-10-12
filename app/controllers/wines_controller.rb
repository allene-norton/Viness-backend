class WinesController < ApplicationController
    def index
        wines = Wine.all 
        render json: wines
    end

    def create
        # user = User.where(uid: params[:googleId])
        wine = Wine.find_or_create_by(
            title: wine_params["title"], 
            spn_id: wine_params["id"],
            avg_rating: wine_params["averageRating"],
            description: wine_params["description"],
            image: wine_params["imageUrl"],
            link: wine_params["link"],
            price: wine_params["price"],
            rating_count: wine_params["ratingCount"],
            score: wine_params["score"])
        render json: wine
    end

    private

    def wine_params
        params.require(:wine).permit(:title, :id, :averageRating, :description, :imageUrl, :link, :price, :ratingCount, :score)
    end
end
