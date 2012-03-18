class Post < ActiveRecord::Base
  validates_presence_of :name, :message => "Must have name"
  validates :title, :presence => true, :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
end
