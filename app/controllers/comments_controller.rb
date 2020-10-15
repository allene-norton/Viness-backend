class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: comments
    end

    def create
        comment = Comment.create(
            user_id: comment_params["user_id"],
            wine_id: comment_params["wine_id"],
            body: comment_params["body"]
        )

        render json: comment
    end


    private 
    def comment_params
        params.require(:comment).permit(:user_id, :wine_id, :body)
    end
end
