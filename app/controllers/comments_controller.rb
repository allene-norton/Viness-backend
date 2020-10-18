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

    def destroy
        comment = Comment.find_by(id: params[:id])
        # byebug
        comment.destroy
    end


    private 
    def comment_params
        params.require(:comment).permit(:id, :user_id, :wine_id, :body)
    end
end
