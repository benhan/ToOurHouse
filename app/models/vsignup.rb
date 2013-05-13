class Vsignup < ActiveRecord::Base
	# Accessible attributes
	attr_accessible :date, :User_id, :Osignup_id, :Responsibility_id

	# Relationships
  belongs_to :User
  belongs_to :Responsibility
  belongs_to :Osignup
end
