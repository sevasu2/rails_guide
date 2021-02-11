class ArticlesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to @article
    # render plain: params[:article].inspect
  end

  def edit
  end

  def show
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
