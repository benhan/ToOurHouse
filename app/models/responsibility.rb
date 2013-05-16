class Responsibility < ActiveRecord::Base
  # Accessible properties
  attr_accessible :description, :name, :organization_type, :positions

  # Validates
  validates :name, presence: true
  validates :description, presence: true
  validates :organization_type, presence: true
  validates :positions, numericality: true

  # Relationships
<<<<<<< HEAD
  has_many :Vsignups, :dependent => :destroy
=======
  has_many :vsignups, :dependent => :destroy
>>>>>>> 19f3ae6cc4629fcb48706e99ff19aeadf87f57b8
end
