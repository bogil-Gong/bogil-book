class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts, dependent: :destroy
  has_many :friendships
  has_many :frineds, through: :friendships
  before_save { self.email = email.downcase }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: :true, length:{maximum: 40},
            uniqueness: {case_sensitive: false}

  def full_name
    return "#{first_name}#{last_name}".strip if (first_name || last_name)
    "No_name"
  end
end
