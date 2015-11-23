class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.integer :person_id
      t.date :frequency_date
      t.time :time_input
      t.time :time_output

      t.timestamps null: false
    end
    add_index :frequencies, :person_id
  end
end
