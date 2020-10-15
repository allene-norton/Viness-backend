class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users 
    end

    def create
        token = params[:id_token]
        auth_response = RestClient.get('https://oauth2.googleapis.com/tokeninfo?id_token=' + token)
        res_params = JSON.parse(auth_response.body)
        if res_params["aud"] == Rails.application.credentials[:client_id]
            user = User.find_or_create_by(
                uid: res_params["sub"],
                email: res_params["email"],
                first_name: res_params["given_name"],
                last_name: res_params["family_name"],
                image: res_params["picture"],
                display_name: res_params["name"]
            )

            render json: user
        end 
    end

    def userwines
        user = User.where(id: params[:user_id]).first
        # byebug
        wines = user.wines 

        render json: wines
    end

end


# serializer