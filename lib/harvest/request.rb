module Harvest
  class Request
    attr_accessor :resource, :params

    def initialize conn, path, params = {}
      @connection = conn
      @path = path
      @params = params
    end

    def get
      @connection.get do |req|
        req.url @path, @params
      end
    end

    def post
      @connection.post do |req|
        req.url @path
        req.body = @params
      end
    end
  end
end
