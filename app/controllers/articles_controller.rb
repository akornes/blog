class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def new
    end

    #******edit goes here *******

    def create
        @article = Article.new(article_params)
   
        @article.save
        redirect_to @article
    end

    #******update goes here *******

    #******destroy goes here *******

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
