require 'harvest/client/base_api'
require 'harvest/client/helpers/all'
require 'harvest/client/helpers/find'
require 'harvest/client/helpers/create'

module Harvest
  class Client
    module Users
      def users
        UsersApi.new(connection)
      end

      class UsersApi < BaseApi
        include Helpers::All
        include Helpers::Find
        include Helpers::Create

        def me
          res = Request.new(@connection, build_url('me')).get
          if res.success?
            resource.new(res.body)
          else
            res.error
          end
        end

        def resource
          Resource::User
        end

        def collection_name
          'users'
        end
      end
    end
  end
end
