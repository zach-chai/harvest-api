module Harvest
  class Request
    attr_accessor :resource, :params

    def initialize conn, path, params = {}
      @connection = conn
      @path = path
      @params = params
    end

    def get
      res = @connection.get do |req|
              req.url @path, @params
            end
      Response.new res
    end

    def post
      res = @connection.post do |req|
              req.url @path
              req.body = @params
            end
      Response.new res
    end
  end
end
