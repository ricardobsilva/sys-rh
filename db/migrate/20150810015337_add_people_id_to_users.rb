class AddPeopleIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :people_id, :integer
    add_index :users, :people_id
  end
end
