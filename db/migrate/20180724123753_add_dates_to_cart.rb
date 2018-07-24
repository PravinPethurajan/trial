class AddDatesToCart < ActiveRecord::Migration[5.2]
  def change
      add_column :carts, :issue_date, :integer
      add_column :carts, :due_date, :integer
  end
end
