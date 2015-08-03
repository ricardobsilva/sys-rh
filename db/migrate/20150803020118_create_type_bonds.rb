class CreateTypeBonds < ActiveRecord::Migration
  def change
    create_table :type_bonds do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
