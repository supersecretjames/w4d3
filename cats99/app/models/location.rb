class Location < ActiveRecord::Base
  attr_accessible :name #REV: again, nice normalization.
  has_many :cats
end
