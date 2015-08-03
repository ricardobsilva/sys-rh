class CreateBonds < ActiveRecord::Migration
  def change
    create_table :bonds do |t|
      t.string :description
      t.date :dt_admission
      t.integer :workload
      t.text :obs
      t.integer :person_id
      t.integer :role_id
      t.integer :type_bond_id
      t.integer :instituation_id
      t.integer :situation_bond_id

      t.timestamps null: false
    end
    add_index :bonds, :person_id
    add_index :bonds, :role_id
    add_index :bonds, :type_bond_id
    add_index :bonds, :instituation_id
    add_index :bonds, :situation_bond_id
  end
end
