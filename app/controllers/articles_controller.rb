class ArticlesController < ApplicationController
    
    def index
        authenticate_admin
        @articles = Article.all
    end
    
    def show
        authenticate_admin
        @article = Article.find(params[:id])
    end
    
    def new
        authenticate_admin
        @article = Article.new
    end
    
    def edit
        authenticate_admin
        @article = Article.find(params[:id])
    end
    
    def create
        @article = Article.new(article_params)
        @article.user = current_user
    
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end
    
    def update
        @article = Article.find(params[:id])
        @article.user = current_user
 
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        
        if current_user
            @article.destroy
            redirect_to articles_path
        end
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :text, :details)
        end
end
