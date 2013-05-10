class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
