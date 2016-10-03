class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params.merge(author_id: session[:user_id]))
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :author_id, :url)
  end
end
