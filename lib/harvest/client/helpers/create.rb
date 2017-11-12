module Harvest
  class Client
    module Helpers
      module Create
        def create body
          res = Request.new(@connection, "#{collection_name}", body).post
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
