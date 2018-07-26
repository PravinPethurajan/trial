class AddName1ToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name1, :String
  end
end
