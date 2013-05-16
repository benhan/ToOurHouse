class Vsignup < ActiveRecord::Base
	# Accessible attributes
<<<<<<< HEAD
	attr_accessible :date, :User_id, :Responsibility_id, :Osignup_id

	# Validations
	validates :date, presence: true
	validates :User, presence: true
	validates :Responsibility, presence: true
	validates :Osignup, presence: true
=======
	attr_accessible :date, :User_id, :Osignup_id, :Responsibility_id
>>>>>>> 19f3ae6cc4629fcb48706e99ff19aeadf87f57b8

	# Relationships
  belongs_to :User
  belongs_to :Responsibility
  belongs_to :Osignup
end
