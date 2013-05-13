class CreateVsignups < ActiveRecord::Migration
  def change
    create_table :vsignups do |t|
      t.date :date
      t.references :User
      t.references :Responsibility
      t.references :Osignup

      t.timestamps
    end
    add_index :vsignups, :User_id
    add_index :vsignups, :Responsibility_id
    add_index :vsignups, :Osignup_id
  end
end
