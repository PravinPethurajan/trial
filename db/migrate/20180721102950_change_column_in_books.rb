class ChangeColumnInBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :email, :synopsis
    change_column :books, :synopsis, :text
  end
end
