class AddNumberPatioToPeople < ActiveRecord::Migration
  def change
    add_column :people, :number_patio, :string
  end
end
