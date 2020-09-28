class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_messageable
  
  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end


  validates :name, presence: true

  has_many :listings, dependent: :destroy
  
  has_one_attached :avatar

  def mailboxer_email(object)
    #return the model's email here
    :email
  end

end
