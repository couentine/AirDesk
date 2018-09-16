class AddCityToRentals < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :city, :string
  end
end
