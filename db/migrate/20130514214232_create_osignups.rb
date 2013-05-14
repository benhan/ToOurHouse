class CreateOsignups < ActiveRecord::Migration
  def change
    create_table :osignups do |t|
      t.references :Event
      t.references :Organization
      t.string :organization_type
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_index :osignups, :Event_id
    add_index :osignups, :Organization_id
  end
end
