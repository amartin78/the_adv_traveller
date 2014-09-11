module CommentsHelper

	def cache_key_for_comments
		count = Comment.count
		max_updated_at = Article.maximum(:updated_at).try(:utc).try(:to_s, :number)
		"comments/id-#{count}-#{max_updated_at}"
	end
end
