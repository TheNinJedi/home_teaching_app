require "test_helper"

class RouteTest < ActiveSupport::TestCase

  def setup
    @route = Route.new
  end

  def test_valid
    assert @route.valid?
  end

end
