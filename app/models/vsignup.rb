class Vsignup < ActiveRecord::Base
	# Accessible attributes
	attr_accessible :date, :User_id, :Responsibility_id, :Osignup_id

	# Validations
	validates :date, presence: true
	validates :User, presence: true
	validates :Responsibility, presence: true
	validates :Osignup, presence: true

	# Relationships
  belongs_to :User
  belongs_to :Responsibility
  belongs_to :Osignup
end
