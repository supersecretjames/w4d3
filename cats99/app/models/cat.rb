class Cat < ActiveRecord::Base
  attr_accessible :name, :age, :birth_date, :color_id, :location_id, :sex

  belongs_to :location
  belongs_to :color
  has_many :rental_requests
end
