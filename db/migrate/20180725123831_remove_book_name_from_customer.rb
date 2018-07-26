class RemoveBookNameFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :book_name, :String
  end
end
