module CommentsHelper
  def comment_link(article)
    link_to pluralize(article.comments.count, 'comment'), article_path(article)
  end
end
