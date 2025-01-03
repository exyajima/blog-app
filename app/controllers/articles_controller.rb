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

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), notice: '保存されました。'
    else
      flash.now[:error] = '保存に失敗しました'
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article), notice: '更新されました。'
    else
      flash.now[:error] = '更新に失敗しました'
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy!
      redirect_to root_path, notice: '削除されました。'
    end
  end


  private
  def article_params
    # puts "--------------------------"
    # puts params
    # puts "--------------------------"
    params.require(:article).permit(:title, :content)
  end
end
