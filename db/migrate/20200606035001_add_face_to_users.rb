class AddFaceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :face, :text
  end
end
