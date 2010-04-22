# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false
#config.action_controller.session[:domain] = '.local.host'

require 'ruby-debug'

config.action_controller.session = {
  :domain => ".local.host", 
  :key => 'tripfriends_session',
  :secret => 'f471415647be47dc513d5e345ca4e582a8f99f388e0ccd46a2cdac51e2cd27c8e8b4d7dbba379cf661d4857afaf6b1867489bbc5e16b5fb14d2c3e53df64c272'
}

#ActionController::Base.session_store = :active_record_store