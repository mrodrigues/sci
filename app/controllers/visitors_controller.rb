class VisitorsController < ApplicationController
  def index
    @articles = Article.all
    @article_likes = ArticleLike.all
  end
end
