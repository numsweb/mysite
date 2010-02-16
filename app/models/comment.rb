class Comment < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :comment
  validates_email_address :email
  

end
