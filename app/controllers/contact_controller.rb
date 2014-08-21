class ContactController < ApplicationController
  def form_in
  end
  def form_out
    @mail = ActionMailer::Base.mail(:from => params[:email], :to => "ammj24@hotmail.com", :subject => params[:subject], 
        :body => params[:message]).deliver
    flash[:notice] = "Thanks for your submission. We will contact you as soon as possible."
  end
end