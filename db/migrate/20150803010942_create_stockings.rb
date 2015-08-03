class CreateStockings < ActiveRecord::Migration
  def change
    create_table :stockings do |t|
      t.date :data
      t.integer :workload
      t.text :obs
      t.integer :function_id
      t.integer :local_id

      t.timestamps null: false
    end
    add_index :stockings, :function_id
    add_index :stockings, :local_id
  end
end
