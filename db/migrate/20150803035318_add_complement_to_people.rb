class AddComplementToPeople < ActiveRecord::Migration
  def change
    add_column :people, :complement, :string
  end
end
