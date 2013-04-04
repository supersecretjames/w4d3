class Color < ActiveRecord::Base
  attr_accessible :color
  has_many :cats
end