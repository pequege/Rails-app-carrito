class AddEmailAndAddressColumn < ActiveRecord::Migration
  def change
    add_column :user_tutorials, :email, :string
    add_column :user_tutorials, :address, :string
  end
end
