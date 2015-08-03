class AddPatioToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :patio, :string
  end
end
