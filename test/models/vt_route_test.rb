require "test_helper"

class VtRouteTest < ActiveSupport::TestCase

  def setup
    @vt_route = VtRoute.new
  end

  def test_valid
    assert @vt_route.valid?
  end

end
