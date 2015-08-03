class AddTypePatioIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :type_patio_id, :integer
    add_index :people, :type_patio_id
  end
end
