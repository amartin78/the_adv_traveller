module ArticlesHelper

	def cache_key_for_articles
		# count = Article.count
		max_updated_at = Article.maximum(:updated_at).try(:utc).try(:to_s, :number)
		"articles/page-#{params[:page]}-#{max_updated_at}"
	end
end