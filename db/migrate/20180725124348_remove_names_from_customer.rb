class RemoveNamesFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :names, :string
  end
end
