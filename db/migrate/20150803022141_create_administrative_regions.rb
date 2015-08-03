class CreateAdministrativeRegions < ActiveRecord::Migration
  def change
    create_table :administrative_regions do |t|
      t.string :name
      t.string :initials

      t.timestamps null: false
    end
  end
end
