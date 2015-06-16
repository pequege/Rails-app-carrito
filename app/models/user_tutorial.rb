class UserTutorial < ActiveRecord::Base
  belongs_to :user
  belongs_to :tutorial

  validates :name, :address, :email, presence: true

end
