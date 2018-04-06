class User < ApplicationRecord
	self.table_name = 'Users'  	

  	validates :username, 
      :email, 
      :password,       
    presence: true

    
end
