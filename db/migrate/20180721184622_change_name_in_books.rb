class ChangeNameInBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :user_id, :User_id
  end
end
