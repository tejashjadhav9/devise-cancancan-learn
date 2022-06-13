class User < ApplicationRecord
  def admin?
    user_type == 'admin'
   end

   def client?
    user_type == 'client'
   end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
