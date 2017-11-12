module Harvest
  class Client
    module Helpers
      module All
        def all params = {}
          res = Request.new(@connection, "#{collection_name}", params).get
          if res.success?
            res.body[collection_name].map { |te| resource.new(te) }
          else
            res.error
          end
        end
      end
    end
  end
end
