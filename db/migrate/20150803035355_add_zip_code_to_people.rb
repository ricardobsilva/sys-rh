class AddZipCodeToPeople < ActiveRecord::Migration
  def change
    add_column :people, :zip_code, :string
  end
end
