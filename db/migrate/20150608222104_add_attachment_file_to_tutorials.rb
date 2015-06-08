class AddAttachmentFileToTutorials < ActiveRecord::Migration
  def self.up
    add_attachment :tutorials, :file
  end

  def self.down
    remove_attachment :tutorials, :file
  end
end
