class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string   "customer_name"
      t.string   "book_name"
      t.datetime "issue_date"
      t.datetime "due_date"
      t.timestamps
    end
  end
end
