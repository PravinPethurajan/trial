class CreateBookCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :book_customers do |t|
      t.integer :book_id
      t.integer :customer_id
    end
  end
end
