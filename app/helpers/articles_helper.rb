module ArticlesHelper
  def toggle_like_button(article)
  	@article_like = ArticleLike.where(['article_id = ? AND user_id = ?', @article.id, current_user.id]).first
  	if @article_like != nil
  	  link_to "Like", like_article_path(article), :class => 'btn btn-info'
  	else
  	  link_to "Like", like_article_path(article), :class => 'btn btn-default'
  	end
  end
end
