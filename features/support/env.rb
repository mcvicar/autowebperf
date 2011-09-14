# RSpec
require 'rspec/expectations'

# Webrat
require 'webrat'

# be_valid_asset for HTML & CSS validation
require 'be_valid_asset'

# Stop Webrat logging
# require 'webrat_logging_patches'

# Date information for header expiry
require 'date'

require 'test/unit/assertions'
World(Test::Unit::Assertions)

Webrat.configure do |config|
  config.mode = :mechanize
end

class ResponseHelper
  def response
    webrat_session.response
  end
end

World do
  ResponseHelper.new
  Webrat::Session.new(Webrat::MechanizeAdapter.new)
end
