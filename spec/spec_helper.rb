# frozen_string_literal: true
require "simplecov"
SimpleCov.start do
  add_filter "test"
end

require "rspec"
require "rspec/given"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.color = true
end
