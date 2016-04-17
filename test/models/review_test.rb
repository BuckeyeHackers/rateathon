require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  setup do
    @one = reviews(:one)
    @two = reviews(:two)
  end

  test "#rating" do
    assert_equal(1, @one.rating)
    assert_equal(1.8, @two.rating)
  end

  test "#score" do
    assert_equal(-1, @one.score)
    assert_equal(2, @two.score)
  end
end
