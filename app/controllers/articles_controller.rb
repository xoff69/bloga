class ArticlesController < ApplicationController

    before_action :set_article, only:  [:show, :edit, :update, :destroy]

    def index
        @articles = Article.all
    end 

    def show #view article
       
    end 

    def new 

        @article = Article.new
    end 

    def edit 
        
    end 
    def destroy 
       
        @article.destroy
        redirect_to articles_path
    end 
    def update 
   
        if @article.update(article_params)
            redirect_to articles_path
        else
            render :edit, status: :unprocessable_entity
        end
    end 
    def create 
        @article = Article.new( article_params)
        if @article.save
            redirect_to articles_path
        else
            render :new, status: :unprocessable_entity
        end
    end 

    private

    def article_params
        params.require(:article).permit(:title, :content)
    end

    def set_article
        @article = Article.find(params[:id])
    end
end
