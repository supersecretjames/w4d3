class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.references :location

      t.timestamps
    end
    add_index :cats, :location_id
  end
end
