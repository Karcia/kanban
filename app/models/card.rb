class Card < ActiveRecord::Base
  belongs_to :list

  validates :list_id, presence: true
  validates :title, presence: true
end
