require "test_helper"

class DistrictTest < ActiveSupport::TestCase

  def setup
    @district = District.new
  end

  def test_valid
    assert @district.valid?
  end

end
