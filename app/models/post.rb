class Post < ActiveRecord::Base
  has_many :tags, :through => :posts_tag
  has_many :posts_tag
  validates :description, :presence => true
  validates :title, :presence => true

  def all_tags
    s= ""
    self.tags.each_with_index do |tag, index|
      s += tag.name if index == 0
      s += "," + tag.name unless index == 0
    end
    return s
  end
  # validates :title, presence: true,
  #                  length: { minimum: 6 }

  # def proper_title
  #   title.capitalize
  # end
end