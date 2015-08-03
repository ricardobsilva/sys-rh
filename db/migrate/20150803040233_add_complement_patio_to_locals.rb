class AddComplementPatioToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :complement_patio, :string
  end
end
