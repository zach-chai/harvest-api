module Harvest
  class Client
    class BaseApi
      def initialize conn
        @connection = conn
      end

      def build_url path = nil
        [collection_name, path].join('/')
      end
    end
  end
end
