class AddIdToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :book_id, :integer
    add_column :carts, :customer_id, :integer
  end
end
