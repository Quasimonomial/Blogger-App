class ArticlesController < ApplicationController
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_url(@article)
    else
      flash[:errors] = @article.errors.full_messages
      render :new
    end
  end

  def index
    @articles = Article.all
    render :index
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
