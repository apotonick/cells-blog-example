class Comment < ActiveRecord::Base
  belongs_to :user
  validates_length_of :text, :minimum => 4
end
