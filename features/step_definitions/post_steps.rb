Given /^a post exists with the title "([^\"]*)" and text "([^\"]*)"$/ do |title, text|
  Post.create!(:title => title, :text => text)
end
