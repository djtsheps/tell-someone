require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TellSomeone
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

		config.action_mailer.delivery_method = :smtp
		config.action_mailer.perform_deliveries = true
		config.action_mailer.raise_delivery_errors = false
		config.action_mailer.default :charset => "utf-8"
		config.action_mailer.smtp_settings = {
		  address: "smtp.gmail.com",
		  port: 587,
		  domain: "tell-someone.herokuapp.com",
		  authentication: "plain",
		  enable_starttls_auto: true,
		  user_name: ENV["GMAIL_USERNAME"],
		  password: ENV["GMAIL_PASSWORD"]
		}
  end
end
