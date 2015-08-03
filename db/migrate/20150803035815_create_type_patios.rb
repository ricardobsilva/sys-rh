class CreateTypePatios < ActiveRecord::Migration
  def change
    create_table :type_patios do |t|
      t.string :name
      t.string :initial

      t.timestamps null: false
    end
  end
end
