class CreateCust < ActiveRecord::Migration[5.2]
  def change
    create_table :custs do |t|
      t.string :name
      t.integer :book_id
      t.integer :customer_id
      t.datetime :issue_date
      t.datetime :due_date
    end
  end
end
