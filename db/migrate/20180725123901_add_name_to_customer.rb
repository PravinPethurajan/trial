class AddNameToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name, :String
  end
end
