class CreateRentalRequests < ActiveRecord::Migration
  def change
    create_table :rental_requests do |t|
      t.references :cat
      t.date :start_time
      t.date :end_time
      t.integer :status

      t.timestamps
    end
    add_index :rental_requests, :cat_id
  end
end
