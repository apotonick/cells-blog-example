require 'test_helper'

class ReaderTest < ActionController::IntegrationTest

  test "viewing the start page" do
    visit '/'
    assert page.has_content?('The Incredible Cells Blog')
       
    recent_posts = ["Post 6", "Post 5", "Post 4", "Post 3", "Post two"]
    i = 0
    all("#sidebar li").each do |p|
      assert_equal recent_posts[i], p.text, p
      i+=1;
    end
    
  end

end
