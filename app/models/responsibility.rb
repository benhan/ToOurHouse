class Responsibility < ActiveRecord::Base
  # Accessible properties
  attr_accessible :description, :name, :organization_type, :positions

  # Validates
  validates :name, presence: true
  validates :description, presence: true
  validates :organization_type, presence: true
  validates :positions, numericality: true

  # Relationships
  has_many :user_signups, :dependent => :destroy
end
