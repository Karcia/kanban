class List < ActiveRecord::Base
  has_many :cards
  belongs_to :user
  belongs_to :project
end
