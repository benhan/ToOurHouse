class CreateOsignups < ActiveRecord::Migration
  def change
    create_table :osignups do |t|
      t.date :start_date
      t.date :end_date
      t.references :organization
      t.string :organization_type

      t.timestamps
    end
    add_index :osignups, :organization_id
  end
end
