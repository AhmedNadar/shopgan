class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :trackable, :recoverable, 
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable


	def full_name
		# first_name.capitalize + " " + last_name.capitalize  
		"#{first_name.capitalize} #{last_name.capitalize}"      	
	end         

end
