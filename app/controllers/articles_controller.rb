class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    articles = Article.all
    render json: articles
  end
end
