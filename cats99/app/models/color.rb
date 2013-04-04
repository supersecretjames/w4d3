class Color < ActiveRecord::Base #REV: nice normalization
  attr_accessible :color
  has_many :cats
end
