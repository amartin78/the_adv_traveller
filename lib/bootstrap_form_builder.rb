class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
	include ActionView::Helpers::TagHelper
	include ActionView::Helpers::CaptureHelper
	include ActionView::Helpers::TextHelper

	attr_accessor :output_buffer

	def email_field(attribute, options={})
		label_text ||= options.delete(:label).to_s.titleize
		options[:class] ||= 'form-control'
		options[:placeholder] ||= 'Email'
		content_tag(:div, class: "form-group") do
			label(attribute, label_text) + 
			super(attribute, options)
		end
	end

	def password_field(attribute, options={})
		label_text ||= options.delete(:label).to_s.titleize
		options[:class] ||= 'form-control'
		options[:placeholder] ||= 'Password'
		options[:autocomplete] ||= 'off'
		content_tag(:div, class: "form-group") do
			label(attribute, label_text) + 
			super(attribute, options)
		end
	end

	def check_box(attribute, options = {})
		options[:label] ||= attribute
		label_text ||= options.delete(:label).to_s.titleize
		content_tag(:div, class: "form-group checkbox-inline") do
			super(attribute, options) +
			label(attribute, label_text)
		end
	end

	def submit(text, options={})
		options[:class] ||= 'btn btn-success btn-block'
		content_tag(:div, class: "form-group") do
			super(text, options)
		end
	end

end