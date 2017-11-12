require 'harvest/client/base_api'
require 'harvest/client/helpers/all'
require 'harvest/client/helpers/find'
require 'harvest/client/helpers/create'

module Harvest
  class Client
    module TimeEntries
      def time_entries
        TimeEntriesApi.new(connection)
      end

      class TimeEntriesApi < BaseApi
        include Helpers::All
        include Helpers::Find
        include Helpers::Create

        def resource
          Resource::TimeEntry
        end

        def collection_name
          'time_entries'
        end
      end
    end
  end
end
