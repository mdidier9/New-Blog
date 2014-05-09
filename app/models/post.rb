class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true, uniqueness: true

  scope :last_posts, lambda{|num| limit(num).order("id desc")}

  def self.last_two_posts     ##DEPRECATED --> use scope
    limit(2).order("id desc")
  end

end
