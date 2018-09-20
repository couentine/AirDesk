class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.string :name
      t.text :description
      t.string :picture
      add_column :rentals, :city, :string
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
