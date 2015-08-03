class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.integer :administrative_region_id

      t.timestamps null: false
    end
    add_index :districts, :administrative_region_id
  end
end
