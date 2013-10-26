class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'Username'
  attr_acessor :login
  attr_accessible :login
  # attr_accessible :title, :body
end
