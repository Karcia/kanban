class Project < ActiveRecord::Base
  belongs_to :user
  has_many :lists

  validates :user_id, presence: true
  validates :title, presence: true
end
