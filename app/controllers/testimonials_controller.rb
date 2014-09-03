class TestimonialsController < ApplicationController
  include ActiveModel::MassAssignmentSecurity

  attr_protected :name, :email, :body

  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @testimonial = @product.testimonials.create(params[:testimonial])
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @testimonial = @product.testimonials.find(params[:id])
    @testimonial.destroy
    redirect_to product_path(@product)
  end

end
