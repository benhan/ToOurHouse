class Organization < ActiveRecord::Base
	# Accessible attributes
  attr_accessible :city, :country, :description, :name, :state, :street, :website, :zipcode, :image

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, numericality: true, presence: true
  validates :country, presence: true
  validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
                               size: { less_than: 5.megabytes} 

  # Relationships
  has_attached_file :image, styles: {tiny: "25x25>", small: "50x50>", profile: "180x180>"}, :dependent => :destroy
<<<<<<< HEAD
  has_many :Users
  has_many :Osignups, :dependent => :destroy
=======
  has_many :users
  has_many :osignups, :dependent => :destroy
>>>>>>> 19f3ae6cc4629fcb48706e99ff19aeadf87f57b8
end
