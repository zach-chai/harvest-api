require 'faraday'
require 'faraday_middleware'

require 'byebug'

require 'harvest/version'
require 'harvest/client'
require 'harvest/request'
require 'harvest/response'

require 'harvest/resource/base'
require 'harvest/resource/time_entry'
require 'harvest/resource/user'

module Harvest
  class << self
    def client *args
      Client.new *args
    end
  end
end
