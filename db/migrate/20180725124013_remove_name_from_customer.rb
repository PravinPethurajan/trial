class RemoveNameFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :name, :String
  end
end
