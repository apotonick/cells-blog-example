require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should respond to .recent" do
    assert_equal [6, 5, 4, 3, 2], Post.recent.collect { |p| p.id }
  end
end
