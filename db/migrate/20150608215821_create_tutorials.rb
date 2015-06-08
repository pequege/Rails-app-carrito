class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps null: false
    end
  end
end
