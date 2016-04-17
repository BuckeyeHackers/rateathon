require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  setup do
    @one = organizations(:one)
  end

  test "#rating" do
    assert_equal(19.0 / 15, @one.rating)
  end
end
