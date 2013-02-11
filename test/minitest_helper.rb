ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require "minitest/autorun"
require "minitest/rails"
#require "minitest/rails/capybara"
require "minitest/pride"
# Add `gem "minitest/rails/capybara"` to the test group of your Gemfile
# and uncomment the following if you want Capybara feature tests
# 

include Capybara::DSL

class MiniTest::Rails::Spec
  class << self
    alias :context :describe
  end
end

class MiniTest::Rails::Spec
  # Add methods to be used by all specs here
end

class MiniTest::Rails::Model
  # make fixtures available within models spec
  #include MiniTest::Rails::Fixtures
end

class MiniTest::Rails::Controller
  # Add methods to be used by controller specs here
end

class MiniTest::Rails::Helper
  # Add methods to be used by helper specs here
end

class MiniTest::Rails::Mailer
  # Add methods to be used by mailer specs here
end

class MiniTest::Rails::Integration
  # Add methods to be used by integration specs here
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
 # fixtures :all

  # Add more helper methods to be used by all tests here...
end
