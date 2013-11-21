require "test_helper"

class FamilyTest < ActiveSupport::TestCase

  def setup
    @family = Family.new
  end

  def test_valid
    assert @family.valid?
  end

end
