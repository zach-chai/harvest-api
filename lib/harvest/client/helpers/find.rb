module Harvest
  class Client
    module Helpers
      module Find
        def find id
          res = Request.new(@connection, "#{collection_name}/#{id}").get
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
