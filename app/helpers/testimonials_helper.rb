module TestimonialsHelper

	def cache_key_for_testimonials
		product = Product.find(params[:id])
		count = Testimonial.count
		max_updated_at = Testimonial.maximum(:updated_at).try(:utc).try(:to_s, :number)
		"#{product.id}/testimonials/id-#{count}-#{max_updated_at}"
	end
end
