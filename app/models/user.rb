class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :account
  after_create :build_account

   def build_account
     Account.create(user: self) # Associations must be defined correctly for this syntax, avoids using ID's directly.
   end
end
