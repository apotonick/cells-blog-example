class Post < ActiveRecord::Base
  validates_presence_of :title, :text
  
  has_many :comments
  
  def to_s
    title
  end
end
