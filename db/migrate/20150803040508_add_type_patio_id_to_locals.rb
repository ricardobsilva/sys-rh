class AddTypePatioIdToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :type_patio_id, :integer
    add_index :locals, :type_patio_id
  end
end
