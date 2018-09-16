class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.string :name
      t.text :description
      t.string :picture
      add_column :rentals, :city, :string

      t.timestamps
    end
  end
end
