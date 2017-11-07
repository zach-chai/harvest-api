module Harvest
  module Api
    class TimeEntries < Base
      def all params = {}
        res = Request.new(@connection, "#{collection_name}", params).get
        if res.success?
          resources = res.body['time_entries'].map { |te| resource.new(te) }
        else
          res.error
        end
      end

      def find id
        res = Request.new(@connection, "#{collection_name}/#{id}").get
        if res.success?
          resource.new(res.body)
        else
          res.error
        end
      end

      def create body
        res = Request.new(@connection, "#{collection_name}", body).post
        if res.success?
          resource.new(res.body)
        else
          res.error
        end
      end

      def resource
        Resource::TimeEntry
      end

      def collection_name
        'time_entries'
      end
    end
  end
end
