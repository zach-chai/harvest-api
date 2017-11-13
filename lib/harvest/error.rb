module Harvest
  class Error < StandardError

    attr_reader

    def self.from_response(res)

    end

    def initialize(res)
      @status = res.status
      

    end
  end

  class ClientError < Error; end

  class ServerError < Error; end
end
