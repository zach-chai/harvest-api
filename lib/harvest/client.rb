module Harvest
  class Client
    BASE_URL = 'https://api.harvestapp.com/v2'.freeze

    attr_reader :connection

    def initialize access_token, account_id, user_agent
      @connection = Faraday.new(url: BASE_URL) do |conn|
        conn.request :json
        conn.request :oauth2, access_token, token_type: :bearer

        conn.headers = {
          'Harvest-Account-Id' => account_id,
          'User-Agent' => user_agent
        }

        conn.response :json, :content_type => /\bjson$/

        conn.adapter Faraday.default_adapter
      end
    end

    def time_entries
      Api::TimeEntries.new(connection)
    end

    def me
      Request.new(connection, 'users/me').get
    end
  end
end


# curl -H "Authorization: Bearer $ACCESS_TOKEN" \
#      -H "Harvest-Account-Id: $ACCOUNT_ID" \
#      -H "User-Agent: MyApp (yourname@example.com)" \
#      https://api.harvestapp.com/v2/users/me
