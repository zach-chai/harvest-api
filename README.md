# Harvest API
A ruby wrapper for Harvest v2 API http://www.getharvest.com/api

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'harvest-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install harvest-api

## Usage

```ruby
# Create client with authentication credentials
client = Harvest.client(access_token: 'd7f9bjnf9', account_id: '183950', user_agent: 'HarvestAPI (yourname@example.com)')

# Fetch the authenticated user
client.users.me
```
