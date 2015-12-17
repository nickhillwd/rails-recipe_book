class ChangeColumnNameUser < ActiveRecord::Migration
  def change
    rename_column :Users, :User_email, :user_email
  end
end
