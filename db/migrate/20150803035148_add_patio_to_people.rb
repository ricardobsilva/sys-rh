class AddPatioToPeople < ActiveRecord::Migration
  def change
    add_column :people, :patio, :string
  end
end
