class User < ActiveRecord::Base
 
 def self.user_create!(add_session_attr)
   rand = SecureRandom.base64   
   add_session_attr[:session_token] = rand
   return add_session_attr
 end

end
