class RentalRequest < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :status, :cat_id

  belongs_to :cat
  validate :rental_period_does_not_overlap

  private
  def rental_period_does_not_overlap
    overlaps = RentalRequest.where("cat_id = ? AND
                        status = 1 AND
                        ((start_time BETWEEN ? AND ? ) OR
                        (end_time BETWEEN ? AND ?))",
                          self.cat_id,
                          self.start_time,
                          self.end_time,
                          self.start_time,
                          self.end_time)
    unless overlaps.empty?
      errors[:cat_id] << "This cat is already rented for this time period."
    end
  end
end
