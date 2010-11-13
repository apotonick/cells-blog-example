class Post < ActiveRecord::Base
  acts_as_taggable
  
  validates_presence_of :title, :text
  
  has_many :comments
  
  scope :recent, :order => "created_at DESC", :limit => 5
  
  
  def to_s
    title
  end
end
