class Tutorial < ActiveRecord::Base
  has_many :user_tutorials
  has_many :users , through: :user_tutorials
  has_attached_file :file 
  validates_attachment_content_type :file, :content_type => ['application/pdf']
end
