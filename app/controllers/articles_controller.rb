class ArticlesController < ApplicationController
    http_basic_authenticate_with name: 'arwie',
                               password: '123456',
                               except: %i[index show]
    def index
        @articles = Article.all
    end
    
    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            flash[:notice] = "Article Created."
            redirect_to articles_path
        else
            render :new
        end
    end

    def show
        @article = Article.find(params[:id])
        @comments = @article.comments
    end

    def destroy

        @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article deleted."

        redirect_to root_path        
    end
       
    def edit
        @article = Article.find(params[:id])

    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            flash[:notice] = "Article updated successfully!"
          redirect_to @article
        else
          render :edit
        end
    end

    private
        def article_params
            params.require(:article).permit(:name, :body)
        end
end
