class AddNumberPatioIdToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :number_patio_id, :string
  end
end
