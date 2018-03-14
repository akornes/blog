class ArticlesController < ApplicationController
    def index
        @articles = Article.all 
    end
    
    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    #******edit goes here *******

    def create
        @article = Article.new(article_params)
   
       if  @article.save
        redirect_to @article
       else
            render 'new'
       end
    end

    #******update goes here *******

    #******destroy goes here *******

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
