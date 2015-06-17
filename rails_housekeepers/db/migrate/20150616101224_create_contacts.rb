class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :country
      t.integer :contact_number
      t.json :other_details
      t.references :contactable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
