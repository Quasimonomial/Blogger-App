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

  def destroy
    article = Article.find(params[:id])
    article.destroy!
    redirect_to articles_url
  end

  def edit
    @article = Article.find(params[:id])
    render :edit
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

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_url(@article)
    else
      flash[:errors] = @article.errors.full_messages
      redirect_to edit_article_url(@article)
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
