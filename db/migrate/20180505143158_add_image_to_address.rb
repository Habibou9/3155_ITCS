class AddImageToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :image, :string
  end
end
