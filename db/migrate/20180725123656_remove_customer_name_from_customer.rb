class RemoveCustomerNameFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :customer_name, :String
  end
end
