module CommentsHelper

	def cache_key_for_comments
		article = Article.find(params[:id])
		count = Comment.count
		max_updated_at = Article.maximum(:updated_at).try(:utc).try(:to_s, :number)
		"#{article.id}/comments/id-#{count}-#{max_updated_at}"
	end
end
