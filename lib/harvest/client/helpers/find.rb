module Harvest
  class Client
    module Helpers
      module Find
        def find id
          res = Request.new(@connection, build_url(id)).get
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
