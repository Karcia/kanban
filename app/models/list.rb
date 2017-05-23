class List < ActiveRecord::Base
  belongs_to :project
  has_many :cards

  validates :project_id, presence: true
  validates :title, presence: true
end
