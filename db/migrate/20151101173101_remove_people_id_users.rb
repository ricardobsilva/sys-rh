class RemovePeopleIdUsers < ActiveRecord::Migration
  def change
    remove_column :users, :people_id
  end
end
