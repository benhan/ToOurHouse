class Osignup < ActiveRecord::Base
<<<<<<< HEAD
  # Accessible attributes
  attr_accessible :end_date, :organization_type, :start_date, :Event_id, :Organization_id

  # Validations
  validates :Event, presence: true
  validates :Organization, presence: true
  validates :organization_type, presence: true

  # Relationships
  belongs_to :Event
  belongs_to :Organization
=======
	# Accessible attributes
  attr_accessible :organization_id, :organization_type, :start_date, :end_date

  # Validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :organization_id, presence: true
  validates :organization_type, presence: true

  # Relationships
  belongs_to :organization
  has_many :vsignups, :dependent => :destroy
>>>>>>> 19f3ae6cc4629fcb48706e99ff19aeadf87f57b8
end
