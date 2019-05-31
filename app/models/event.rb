class Event < ApplicationRecord
  belongs_to :event_venue
  has_one_attached :image
  has_many :ticket_types
  accepts_nested_attributes_for :ticket_types
end
