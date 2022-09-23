ENV["RACK_ENV"] ||= "development"

require "bundler/setup"

Bundler.require(ENV["RACK_ENV"])

require_all 'app'