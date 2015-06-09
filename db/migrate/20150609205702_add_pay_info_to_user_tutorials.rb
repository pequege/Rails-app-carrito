class AddPayInfoToUserTutorials < ActiveRecord::Migration
  def change
    add_column :user_tutorials, :name, :string
    add_column :user_tutorials, :pay_type, :string
  end
end
