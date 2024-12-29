class HomeController < ApplicationController
  def index
    # render 'home/index'
    @title = 'タイトル'
  end

  def about
    # render 'home/about'
  end
end
