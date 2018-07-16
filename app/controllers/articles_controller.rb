class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def success
  end

  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to action: "index"
    else
      render 'new'
    end

  end

  private
    def article_params
      params.require(:article).permit(:first, :last, :company, :website, :email)
    end
end
