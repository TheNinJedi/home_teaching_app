require "test_helper"

class OrganizationTest < ActiveSupport::TestCase

  def setup
    @organization = Organization.new
  end

  def test_valid
    assert @organization.valid?
  end

end
