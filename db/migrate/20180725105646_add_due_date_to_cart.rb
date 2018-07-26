class AddDueDateToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :due_date, :datetime
  end
end
