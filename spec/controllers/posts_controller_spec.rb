require 'spec_helper'

describe PostsController do
  
  context "non-logged in users" do
    it "are not able to begin to create posts" do
      get 'new'
      denied!
    end
    
    it "are not able to create new posts" do
      post 'create'
      denied!
    end
  end
end
