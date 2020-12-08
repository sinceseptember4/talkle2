
class User < ApplicationRecord

  #accessor
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :validatable, :confirmable,
         authentication_keys: [:email]

  #association
  has_many :tweets
  has_many :comments 
  

 


end