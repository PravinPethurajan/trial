class AddValueToBooks < ActiveRecord::Migration[5.2]
  def change
     add_column :books, :lend, :boolean, default:false
  end
end
