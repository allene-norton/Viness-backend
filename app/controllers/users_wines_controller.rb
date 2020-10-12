class UsersWinesController < ApplicationController
    def index
        usersWines = UsersWine.all
        render json: usersWines
    end

    def create
        user = User.where(uid: params[:user_id]).first
        wine = Wine.where(spn_id: params[:wine_id].to_s).first
        # byebug
        userWine = UsersWine.find_or_create_by(
            user_id: user.id,
            wine_id: wine.id)
        render json: userWine
    end


    private

    def users_wine_params
        params.require(:users_wine).permit(:user_id, :wine_id)
    end
end
