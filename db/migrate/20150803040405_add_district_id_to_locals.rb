class AddDistrictIdToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :district_id, :integer
    add_index :locals, :district_id
  end
end
