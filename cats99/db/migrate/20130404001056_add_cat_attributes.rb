class AddCatAttributes < ActiveRecord::Migration
  def change
    change_table :cats do |t|
      t.integer :age
      t.date :birth_date
      t.references :color
      t.integer :sex
    end
  end
end
