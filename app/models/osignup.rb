class Osignup < ActiveRecord::Base
  # Accessible attributes
  attr_accessible :end_date, :organization_type, :start_date, :Event_id, :Organization_id

  # Validations
  validates :Event, presence: true
  validates :Organization, presence: true
  validates :organization_type, presence: true

  # Relationships
  belongs_to :Event
  belongs_to :Organization
end
