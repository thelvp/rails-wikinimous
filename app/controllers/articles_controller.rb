class ArticlesController < ApplicationController

  # READ
  def index
    @articles = Article.all
  end

  def show
    find_article()
  end

  # CREATE
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  # UPDATE
  def edit
    find_article()
  end

  def update
    find_article()
    @article.update(article_params)
    redirect_to article_path
  end

  # DELETE
  def destroy
    find_article()
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def find_article()
    id = params[:id]
    @article = Article.find(id)
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
