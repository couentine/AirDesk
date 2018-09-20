class AddUserIdToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :owner_id, :integer
  end
end
