class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(text: params[:comment][:text], game_id: params[:comment][:game_id])
        render json: comment
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(text: params[:comment][:text], game_id: params[:comment][:game_id])
        render json: comment
        
    end

end
