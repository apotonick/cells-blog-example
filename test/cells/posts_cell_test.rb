require 'test_helper'

class PostsCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end
