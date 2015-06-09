class AddVideoEmbedToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :video_embed, :string
  end
end
