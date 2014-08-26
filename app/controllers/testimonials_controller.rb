class TestimonialsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @testimonial = @product.testimonials.create(testimonial_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @testimonial = @product.testimonials.find(params[:id])
    @testimonial.destroy
    redirect_to product_path(@product)
  end

  private

    def testimonial_params
      params.require(:testimonial).permit(:name, :email, :body, :product_id)
    end

end
