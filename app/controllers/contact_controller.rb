class ContactController < ApplicationController
  def form_in
  end
  def form_out
    @mail = ActionMailer::Base.mail(:from => params[:email], :to => "to@domain.com", :subject => "Wellcome to my Awesome Site", 
        :body => params[:message]).deliver
    flash.notice="You've got an email!"
  end
end