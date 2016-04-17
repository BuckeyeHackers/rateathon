require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @one = events(:one)
  end

  test "#rating" do
    assert_equal(1.4, @one.rating)
  end
end
