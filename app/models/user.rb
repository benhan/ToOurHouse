class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, # :recoverable,
  	:rememberable, :trackable, :validatable

  # Set roles for use with cancan module
  ROLES = %w[admin toh_staff coordinator volunteer guest banned]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :image, :role
  # attr_accessible :title, :body

  # Validation
  validates :name, presence: true
  validates :email, presence: true
  validates_attachment :image, presence: true,
               content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
               size: { less_than: 5.megabytes} 

  # Relationships
  has_attached_file :image, styles: {tiny: "25x25>", small: "50x50>", profile: "180x180>"}, :dependent => :destroy
  belongs_to :organization
end
