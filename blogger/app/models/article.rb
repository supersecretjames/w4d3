class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list, :image
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  has_attached_file :image


  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end # REV Method spacing
  def tag_list=(tags_string)
    tag_names = tags_string.split(',').collect do |s|
      s.strip.downcase
    end.uniq
    new_or_found_tags = tag_names.collect do |name|
      Tag.find_or_create_by_name(name)
    end
    self.tags = new_or_found_tags
  end
end