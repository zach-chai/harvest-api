module Harvest
  class Client
    module Helpers
      module Delete
        def delete id
          res = Request.new(@connection, build_url(id)).delete
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
