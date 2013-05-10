class CreateResponsibilities < ActiveRecord::Migration
  def change
    create_table :responsibilities do |t|
      t.string :name
      t.text :description
      t.string :organization_type
      t.integer :positions

      t.timestamps
    end
  end
end
