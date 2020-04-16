class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: ArticleDatatable.new(params)
  end
end
