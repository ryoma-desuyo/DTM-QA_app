# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ENV["REDIS"] = "0001.apne1.cache.amazonaws.com:6379"
