class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end 
    
    #To show articles at index page
    def index
        @articles = Article.all
    end

    
    #To show articles
    def show
        @article = Article.find(params[:id])
    end
    
    #To create artiles and save
    def create
        @article = Article.new(article_params)
        
        #Adding validation redirection
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
        
    end
    
    #To edit articles
    def edit
        @article = Article.find(params[:id])
    end
    
    #For the update button in the edit page
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    
end

#For whitelisting
private
    def article_params
        params.require(:article).permit(:title,:text)
    end