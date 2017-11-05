require 'faraday'
require 'faraday_middleware'

require 'byebug'

require 'harvest/version'
require 'harvest/client'
require 'harvest/request'

require 'harvest/resource/base'
require 'harvest/resource/time_entry'

require 'harvest/api/base'
require 'harvest/api/time_entries'

module Harvest
  class << self
    def client *args
      Client.new *args
    end
  end
end
