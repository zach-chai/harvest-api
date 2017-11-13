module Harvest
  class Client
    module Helpers
      module Create
        def create body
          res = Request.new(@connection,build_url, body).post
          if res.success?
            resource.new(res.body)
          else
            res.error
          end
        end
      end
    end
  end
end
