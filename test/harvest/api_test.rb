require "test_helper"

class Harvest::ApiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Harvest::Api::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
