class CreateCart < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :name
    end
  end
end
