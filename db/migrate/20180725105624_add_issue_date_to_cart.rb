class AddIssueDateToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :issue_date, :datetime
  end
end
