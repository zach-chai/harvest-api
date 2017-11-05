module Harvest
  module Api
    class Base
      def initialize conn
        @connection = conn
      end
    end
  end
end
