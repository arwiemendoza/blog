class CommentsController < ApplicationController
    http_basic_authenticate_with name: 'arwie',
    password: '123456',
    only: :destroy

    before_action :get_article

    def index
        @article = Article.find(params[:article_id])
        @comments = @article.comments
    end

    def new
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new
    end

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new(comment_params)
        
         if @comment.save
            flash[:notice] = "Comment successfully posted"
            redirect_to article_path(@article)
        else
            render :new
        end
    end

    def destroy
        @comment = Comment.find(params[:id]).destroy
        flash[:notice] = "Comment deleted"
        redirect_to article_path(@article)
    end

    private

    def get_article
        @article = Article.find(params[:article_id])
    end

    def comment_params
        params.require(:comment).permit(:body, :article_id)
    end  
end
