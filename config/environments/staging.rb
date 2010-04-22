
# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# See everything in the log (default is :info)
# config.log_level = :debug

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

# Enable threaded mode
# config.threadsafe!

config.action_controller.session = {
  :domain => ".tripfriends.ru", 
  :key => 'tripfriends_session',
  :secret => 'f471415647be47dc513d5e345ca4e582a8f99f388e0ccd46a2cdac51e2cd27c8e8b4d7dbba379cf661d4857afaf6b1867489bbc5e16b5fb14d2c3e53df64c272'
}

#ActionController::Base.session_store = :active_record_store


ActionMailer::Base.smtp_settings = {  
 :address        => "mail.authsmtp.com", 
 :port           => 23,  
 :user_name      => "ac45012",  
 :password       => "8020collaborate",  
 :authentication => :plain,
 :domain         => "travelsort.ru"
} 
ActionMailer::Base.perform_deliveries = true
config.action_mailer.delivery_method = :smtp