class Event < ApplicationRecord
  has_many :participants, dependent: :destroy

  scope :active, -> { where('open_date >= ?', Date.current) }
end
