module Harvest
  class Response
    extend Forwardable
    
    def initialize res
      @res = res
    end

    def error
      return if success?
      body
    end

    def_delegators :@res, :success?, :status, :body
  end
end
