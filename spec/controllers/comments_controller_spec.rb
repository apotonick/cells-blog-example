require 'spec_helper'

describe CommentsController do
  let(:post) { Post.create!(:title => "Title", :text => "Text") }
  let(:user) { User.create!(:login => "Radar", :password => "password", :password_confirmation => "password")}
  
  context "non-logged-in users" do
    it "are not able to post comments" do
      get :new
      denied!
      assigns[:post].should be_nil
    end
  end
  
  context "logged-in users" do
    
    before do
      login_as(user)
    end
    
    it "are able to post comments" do
      pending("How do we test for logged in users?")
      controller.session[:user_id] = user.id
      get :new, { :post_id => post.id }
      assigns[:post].should_not be_nil
      response.should be_ok
    end
  end
end
