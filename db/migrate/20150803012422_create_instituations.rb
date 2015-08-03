class CreateInstituations < ActiveRecord::Migration
  def change
    create_table :instituations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
