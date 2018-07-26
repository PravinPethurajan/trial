class RemoveDueDateFromCart < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :due_date, :integer
  end
end
