require 'spec_helper'

describe Post do
  context "new post objects" do
    let(:post) { Post.new }
    
    it "cannot be saved without a title" do
      post.text = "This is some text."
      post.save
      post.errors[:title].should_not be_blank
    end
    
    it "cannot be saved without a text" do
      post.title = "This is a title."
      post.save
      post.errors[:text].should_not be_blank
    end
  end
end
