require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module AestheticClinic
  class Application < Rails::Application
    Rails.application.config.active_record.time_zone_aware_types = [:datetime, :time]
		console do 
			ActiveRecord::Base.connection
		end
  end
end
