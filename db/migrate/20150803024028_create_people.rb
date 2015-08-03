class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :gender
      t.string :rg
      t.string :cpf
      t.date :birth_date
      t.string :cel
      t.string :tel1
      t.string :tel2
      t.integer :district_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :people, :district_id
    add_index :people, :user_id
  end
end
