class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
         validates :therapist_name, 
                   presence: true, format: { with: VALID_NAME_REGEX }
          
         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
         validates :email, 
                  presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

         VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze           
          validates :password,
                    presence: true, length: { minimum: 6 }, format: { with: VALID_PASSWORD_REGEX }

 has_many :patients
end
