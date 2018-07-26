class RemoveIssueDateFromCart < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :issue_date, :integer
  end
end
