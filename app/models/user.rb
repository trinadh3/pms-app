class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable,:lockable,:timeoutable,:trackable
     validates_length_of :name, :minimum => 5, :maximum => 10    
     validates_length_of :phonenumber, :minimum => 10
end
