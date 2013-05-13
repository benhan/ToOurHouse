class Osignup < ActiveRecord::Base
	# Accessible attributes
  attr_accessible :organization_id, :organization_type, :start_date, :end_date

  # Validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :organization_id, presence: true
  validates :organization_type, presence: true

  # Relationships
  belongs_to :organization
end
