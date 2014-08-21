# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Setup ActionMailer for Cedar Stack
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :name => ENV[SENDGRID_NAME],
    :password => ENV[SENDGRID_PASSWORD],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}
