class Post < ActiveRecord::Base
  validates_presence_of :title, :text
  
  has_many :comments
  
  scope :recent, :order => "created_at DESC", :limit => 5
  def self.recent_
    find(:all, :order => "created_at DESC", :limit => 5)
  end
  
  
  def to_s
    title
  end
end
