class Event < ActiveRecord::Base
	# Accessible attributes
  attr_accessible :end_date, :name, :start_date

  # Validations
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  # Relationships
  has_many :Osignups, :dependent => :destroy
end
