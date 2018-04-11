class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :FirstName
      t.string :LastName
      t.text :PhoneNumber
      t.text :EmailAddress
      t.text :HomeAddress
      t.string :Company

      t.timestamps
    end
  end
end
