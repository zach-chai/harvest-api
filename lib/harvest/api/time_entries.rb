module Harvest
  module Api
    class TimeEntries < Base
      def all params = {}
        res = Request.new(@connection, "#{collection_name}", params).get
        if res.status == 200
          resources = res.body['time_entries'].map { |te| resource.new(te) }
        else
          { status: res.status, body: res.body }
        end
      end

      def find id
        res = Request.new(@connection, "#{collection_name}/#{id}").get
        if res.status == 200
          resource.new(res.body)
        else
          { status: res.status, body: res.body }
        end
      end

      def create body
        res = Request.new(@connection, "#{collection_name}", body).post
        if res.status == 201
          resource.new(res.body)
        else
          { status: res.status, body: res.body }
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
