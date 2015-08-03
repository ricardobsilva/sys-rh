class CreateTypeLocals < ActiveRecord::Migration
  def change
    create_table :type_locals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
