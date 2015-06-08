class Tutorial < ActiveRecord::Base
  has_attached_file :file 
  validates_attachment_content_type :file, :content_type => ['application/pdf']
end
