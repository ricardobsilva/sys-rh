class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :name_abr
      t.string :initials
      t.string :tel1
      t.string :tel2
      t.string :tel3
      t.integer :type_local_id
      t.integer :institution_id

      t.timestamps null: false
    end
    add_index :locals, :type_local_id
    add_index :locals, :institution_id
  end
end
