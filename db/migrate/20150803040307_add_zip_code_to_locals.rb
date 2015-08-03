class AddZipCodeToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :zip_code, :string
  end
end
