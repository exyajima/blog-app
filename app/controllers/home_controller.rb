class HomeController < ApplicationController
  def index
    # render 'home/index'
    # @title = 'タイトル'
    @article = Article.first
  end

  def about
    # render 'home/about'
  end
end
