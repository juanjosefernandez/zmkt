class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_messageable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  has_many :listings, dependent: :destroy
  
  has_one_attached :avatar

  def mailboxer_email(object)
    #return the model's email here
    :email
  end

end
