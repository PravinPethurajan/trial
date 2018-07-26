class AddNamesToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :names, :String
  end
end
