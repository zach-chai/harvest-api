module Harvest
  class Client
    module Helpers
      module Update
        def update id, body
          res = Request.new(@connection, build_url(id), body).patch
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
