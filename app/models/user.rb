class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role

  before_validation :isAdmin, on: :create

  private
  def isAdmin
  	if User.all.size < 1
    	self.role_id = Role.first.id
    else
    	self.role_id = Role.last.id
    end
  end

end
