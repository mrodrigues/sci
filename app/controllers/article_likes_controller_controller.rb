class ArticleLikesControllerController < ApplicationController
	def new
		@article_like = ArticleLike.new
	end
end
